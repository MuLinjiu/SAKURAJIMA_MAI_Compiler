package Frontend;

import AST.*;
import Util.*;
import Util.error.semanticError;

import java.util.ArrayList;
import java.util.Objects;

public class SementicChecker implements ASTvisitor {



    private globalScope globalscope;
    private Scope currentscope;
    private Type retType;
    private int loop_number = 0;
    private boolean fucid;
    private Select select;
    private boolean have_main = false;

    public Lambada_Returnchecker checker;


    public SementicChecker(globalScope scope){
        select = new Select();
        globalscope = scope;
        currentscope = scope;
        fucid = false;
    }
    @Override
    public void visit(RootNode it) {

        for(DefNode ele : it.defNodes){
            ele.accept(this);
        }
        if(!globalscope.findfunc("main",false))throw new semanticError("no main fucntion",it.pos);
        retType = globalscope.getretTypefromfuc(it.pos,"main");
        if(retType.Type_name != Type.Type_kind.INT || retType.dims != 0)throw new semanticError("main function define error",it.pos);
        ArrayList<Type> p = globalscope.getparameterlistfromfuc(it.pos,"main");
        if(p.size() != 0)throw new semanticError("main parameters error" ,it.pos);

    }

    @Override
    public void visit(ArrayExprNode it) {
        boolean fucid_ = fucid;
        fucid_ = false;
        it.index.accept(this);
        if(retType.Type_name != Type.Type_kind.INT || retType.dims > 0)throw new semanticError("index need to be integer",it.pos);
        fucid = fucid_;
        it.name.accept(this);
        retType.dims--;
        if(retType.dims < 0){
            throw new semanticError("dimensions not match",it.pos);
        }
        it.type = new Type(retType);
    }

    @Override
    public void visit(BackPLUSMINUSExpr it) {
        it.lhs.accept(this);
        if(retType.Type_name != Type.Type_kind.INT || retType.dims > 0)throw new semanticError("++--",it.pos);
        if(!retType.value)throw new semanticError("++--2",it.pos);
        retType.value = false;
    }

    @Override
    public void visit(BasicExprNode it) {
        if(it.opt == BasicExprNode.option.THIS)retType = new Type(Type.Type_kind.THIS,0,false);
        else if(it.opt == BasicExprNode.option.NULL)retType = new Type(Type.Type_kind.NULL,0,false);
        else if(it.opt == BasicExprNode.option.INT)retType = new Type(Type.Type_kind.INT,0,false);
        else if(it.opt == BasicExprNode.option.BOOL)retType = new Type(Type.Type_kind.BOOL,0,false);
        else if(it.opt == BasicExprNode.option.STRING)retType = new Type(Type.Type_kind.STRING,0,false);
        else {
            if(fucid){
                Type type = globalscope.getretTypefromfuc(it.pos,it.contex);
                ArrayList<Type> parameter = globalscope.getparameterlistfromfuc(it.pos,it.contex);
                retType = new Type(it.contex,type, parameter);
            }else {
                retType = new Type(currentscope.getType(it.pos,it.contex,true));
            }
        }
    }

    @Override
    public void visit(BasicTypeNode it) {
//over
    }

    @Override
    public void visit(BinaryExprNode it) {
        if(it.sign == BinaryExprNode.binarysign.DOT){
            boolean fucid_ = fucid;
            fucid = false;
            it.lhs.accept(this);
            it.lhs.type = new Type(retType);
            if(!retType.yinyong()){
                throw new semanticError("no inner content",it.pos);
            }
            fucid = fucid_;
            globalScope globalscope_ = globalscope;
            Scope currentscope_ = currentscope;
            if (retType.dims > 0) {
                globalscope = (globalScope) globalscope.getscopefromclass(it.pos,"_ARRAY");
            }else if(retType.Type_name == Type.Type_kind.STRING) {
                globalscope = (globalScope) globalscope.getscopefromclass(it.pos,"string");
            }else if(retType.Type_name == Type.Type_kind.CLASS) {
                globalscope = (globalScope) globalscope.getscopefromclass(it.pos, retType.name);
            }
            currentscope = globalscope;
            it.rhs.accept(this);
            it.rhs.type = new Type(retType);
            currentscope = currentscope_;
            globalscope = globalscope_;
        }else{
            it.lhs.accept(this);
            it.lhs.type = new Type(retType);
            Type lhstype = retType;
            it.rhs.accept(this);
            it.rhs.type = new Type(retType);
            Type rhstype = retType;
            if(it.sign == BinaryExprNode.binarysign.ASSIGN){
                lhstype.assigncheck(it.pos,globalscope,rhstype);
                retType.value = false;
            }else{
                if(lhstype.dims > 0 || lhstype.Type_name == Type.Type_kind.CLASS){
                    if(it.sign != BinaryExprNode.binarysign.NOT_EQUAL && it.sign != BinaryExprNode.binarysign.EQUAL){
                        throw new semanticError("cannot compare == !=", it.pos);
                    }
                    if(rhstype.Type_name != Type.Type_kind.NULL){
                        lhstype.typeMatcher(it.pos,rhstype);
                    }
                    retType = new Type(Type.Type_kind.BOOL,0,false);
                }else if(rhstype.dims > 0 || rhstype.Type_name == Type.Type_kind.CLASS) {
                    if(it.sign != BinaryExprNode.binarysign.NOT_EQUAL && it.sign != BinaryExprNode.binarysign.EQUAL){
                        throw new semanticError("cannot compare == !=", it.pos);
                    }
                    if(lhstype.Type_name != Type.Type_kind.NULL){
                        rhstype.typeMatcher(it.pos,lhstype);
                    }
                    retType = new Type(Type.Type_kind.BOOL,0,false);
                }else {
                    if(lhstype.Type_name == Type.Type_kind.INT){
                        lhstype.typeMatcher(it.pos,rhstype);
                        if(select.comparesign(it.sign)){
                            retType = new Type(Type.Type_kind.BOOL,0,false);
                        }else if(select.yunsuansign(it.sign)){
                            retType = new Type(Type.Type_kind.INT,0,false);
                        }
                        else throw new semanticError("int not cmp or yunsuan", it.pos);
                    }else if(lhstype.Type_name == Type.Type_kind.BOOL){
                        lhstype.typeMatcher(it.pos,rhstype);
                        if(it.sign == BinaryExprNode.binarysign.EQUAL || it.sign == BinaryExprNode.binarysign.NOT_EQUAL || select.logicsign(it.sign)){
                            retType = new Type(Type.Type_kind.BOOL,0,false);
                        }else throw new semanticError("bool can onyl logic and == !=",it.pos);
                    }else if(lhstype.Type_name == Type.Type_kind.STRING){
                        lhstype.typeMatcher(it.pos,rhstype);
                        if(it.sign == BinaryExprNode.binarysign.ADD){
                            retType = new Type(Type.Type_kind.STRING,0,false);
                        }else if(select.comparesign(it.sign)){
                            retType = new Type(Type.Type_kind.BOOL,0,false);
                        }else throw new semanticError("string action only add and cmp",it.pos);
                    }else if(lhstype.Type_name == Type.Type_kind.NULL){
                        lhstype.typeMatcher(it.pos,rhstype);
                        if(it.sign != BinaryExprNode.binarysign.NOT_EQUAL && it.sign != BinaryExprNode.binarysign.EQUAL){
                            throw new semanticError("null can only == and !=",it.pos);
                        }
                        retType = new Type(Type.Type_kind.BOOL,0,false);
                    }else throw new semanticError("other binary expr error",it.pos);
                }
            }
        }
    }

    @Override
    public void visit(BlockNode it) {
        if(it.suiteNode != null){
            currentscope = new Scope(currentscope);//切换新作用域
            it.suiteNode.accept(this);
            currentscope = currentscope.parentScope();
        }else if(it.stmtNode != null){
            it.stmtNode.accept(this);
        }
    }

    @Override
    public void visit(BracketExprNode it) {
        it.expr.accept(this);
        it.expr.type = new Type(retType);
    }

    @Override
    public void visit(BreakNode it) {
        if(loop_number == 0)throw new semanticError("no loop to break",it.pos);
        //loop_number--;
    }

    @Override
    public void visit(ClassDefNode it) {
        currentscope = ((globalScope)currentscope).getscopefromclass(it.pos, it.name);
        globalscope = (globalScope) currentscope;
        if(it.construDefNode != null){
            if(!Objects.equals(it.construDefNode.name, it.name)){
                throw new semanticError("constructor name differ with class name", it.pos);
            }else {
                it.construDefNode.accept(this);
            }
        }

        it.funcDef.forEach(x -> {
            if(Objects.equals(x.name, it.name))throw new semanticError("function name is the same with class name",x.pos);
            else x.accept(this);
        });

        //没有vardef，symbolcollector处理过

        globalscope = (globalScope) globalscope.parentScope();
        currentscope = currentscope.parentScope();

    }

    @Override
    public void visit(ConstruDefNode it) {
        currentscope = new Scope(currentscope);
        globalscope.addfunc(it.pos, it.name, currentscope,new Type(Type.Type_kind.VOID,0,false),new ArrayList<>());
        checker = new Lambada_Returnchecker(it.name);
        if(it.suiteNode != null)it.suiteNode.accept(this);
        else throw new semanticError("no suite node",it.pos);
        //if(retType.Type_name != Type.Type_kind.VOID)throw new semanticError("sf", it.pos);
        currentscope = currentscope.parentScope();
    }

    @Override
    public void visit(ContinueNode it) {
        if(loop_number == 0)throw new semanticError("no loop to continue",it.pos);
       // loop_number--;
    }

    @Override
    public void visit(ElseStmtNode it) {
        currentscope = new Scope(currentscope);
        it.suite_stmtNode.accept(this);
        currentscope = currentscope.parentScope();
    }

    @Override
    public void visit(ForfinishNode it) {
        it.exprNode.accept(this);
        it.exprNode.type = new Type(retType);
        if(retType.Type_name != Type.Type_kind.BOOL){
            throw new semanticError("for condition not bool",it.pos);
        }
        if(retType.dims > 0)throw new semanticError("for condition return not shuzu",it.pos);
    }

    @Override
    public void visit(ForstartNode it) {
        if(it.varDefNode != null)it.varDefNode.accept(this);
        if(it.exprNode != null){
            it.exprNode.accept(this);
            it.exprNode.type = new Type(retType);
        }
    }

    @Override
    public void visit(ForStmtNode it) {
        loop_number++;
        currentscope = new Scope(currentscope);
        if(it.forstartNode != null)it.forstartNode.accept(this);
        if(it.forfinishNode != null)it.forfinishNode.accept(this);
        if(it.exprNode != null){
            it.exprNode.accept(this);
            it.exprNode.type = new Type(retType);
        }
        it.suite_stmtNode.accept(this);
        currentscope = currentscope.parentScope();
        loop_number--;
    }

    @Override
    public void visit(FucDefNode it) {
        currentscope = globalscope.getscopefromfuc(it.pos,it.name);
        checker = new Lambada_Returnchecker(it.name);
        it.suiteNode.accept(this);

        if(Objects.equals(it.name, "main") && have_main){
            throw new semanticError("function == main",it.pos);
        }
        if(Objects.equals(it.name, "main") && !have_main)have_main = true;

        if(!Objects.equals(checker.fucname, "main")){
            retType = globalscope.getretTypefromfuc(it.pos,it.name);
        }
        currentscope = currentscope.parentScope();
    }

    @Override
    public void visit(FucTypeNode it) {
//over
    }

    @Override
    public void visit(Global_var_define_youfen it) {
        it.varDefNode.accept(this);
    }

    @Override
    public void visit(HanshuDiaoyongExprNode it) {
        fucid = true;
        it.expr.accept(this);
        //it.expr.type = new Type(retType);
        if(retType.Type_name != Type.Type_kind.FUNC){
            throw new semanticError("cannot call sa fuc",it.pos);
        }
        fucid = false;
        ArrayList<Type> fucparemeters = retType.fucparameters;
        Type fucretType = retType.fucretType;
        if(it.sen_list.exprNodes.size() != fucparemeters.size()){
            throw new semanticError("parameterlist number not match",it.pos);
        }
        for(int i = 0 ; i < it.sen_list.exprNodes.size(); i++){
            it.sen_list.exprNodes.get(i).accept(this);
            Type fucparatype = fucparemeters.get(i);
            fucparatype.assigncheck(it.pos,globalscope,retType);
        }
        retType = new Type(fucretType);
        retType.value = false;
        it.type = new Type(retType);
    }

    @Override
    public void visit(IfStmtNode it) {
        it.exprNode.accept(this);
        it.exprNode.type = new Type(retType);
        if(retType.Type_name != Type.Type_kind.BOOL){
            throw new semanticError("if condition not bool",it.pos);
        }
        if(retType.dims > 0)throw new semanticError("if condition return not shuzu",it.pos);
        boolean re = true;
        checker.return_or_not = false;
        currentscope = new Scope(currentscope);
        it.suite_stmtNode.accept(this);
        currentscope = currentscope.parentScope();

        re = checker.return_or_not;
        if(it.elseStmtNode != null){
            checker.return_or_not = false;
            it.elseStmtNode.accept(this);
            re = (re && checker.return_or_not) ? true : false;
        }
        checker.return_or_not = re;
    }

    @Override
    public void visit(LambadaExprNode it) {


        currentscope = new Scope(currentscope);
        ArrayList<Type> fucparameters = new ArrayList<>();
        if(it.parameterListNode != null){
            for(ParameterNode ele : it.parameterListNode.parameterNodes){
                ele.typeNode.accept(this);
                currentscope.addVariable(ele.pos, ele.name, retType);
                fucparameters.add(retType);
            }
        }
        Lambada_Returnchecker check1 = checker;
        checker = new Lambada_Returnchecker("Lambda");
        it.suiteNode.accept(this);
        if(!checker.return_or_not){
            throw new semanticError("lamda1",it.pos);
        }
        Type rettype = new Type(checker.retType);
        checker = check1;
        currentscope = currentscope.parentScope();
        if(it.sentence_listNode.exprNodes.size() != fucparameters.size())throw new semanticError("sdfa",it.pos);
        for(int i = 0 ; i < it.sentence_listNode.exprNodes.size();i++){
            it.sentence_listNode.exprNodes.get(i).accept(this);
            Type fuccc = fucparameters.get(i);
            fuccc.assigncheck(it.sentence_listNode.pos,globalscope,retType);
        }
        retType = rettype;
        retType.value = false;
        it.type = new Type(retType);
    }

    @Override
    public void visit(NewerNode it) {
        Type type;
        if(it.Classname != null){
            type = new Type(it.Classname, it.neworsize.size(),true);
        }else type = new Type(it.basicTypeNode.basicType,it.neworsize.size(),true);
        boolean exp = false,exp2 = false;
        if(it.neworsize.size() > 0)exp = true;
        for(int i = 0; i < it.neworsize.size();i++){
            NewersizeNode x = it.neworsize.get(i);
            if(x.expr == null)exp = false;
            else{
                exp2 = true;
                if(!exp){
                    throw new semanticError("new1",x.pos);
                }
                x.expr.accept(this);
                if(retType.Type_name != Type.Type_kind.INT || retType.dims > 0)throw new semanticError("new2",x.pos);
            }
        }
        if(!exp && !exp2)throw new semanticError("ir new",it.pos);//all empty
        retType = type;
        it.type = new Type(retType);
    }

    @Override
    public void visit(ParameterNode it) {
//over
    }

    @Override
    public void visit(ParameterListNode it) {
//over
    }

    @Override
    public void visit(PrePLUSMINUSExpr it) {
        it.rhs.accept(this);
        if(retType.Type_name != Type.Type_kind.INT || retType.dims > 0)throw new semanticError("++--",it.pos);
        if(!retType.value)throw new semanticError("++--2",it.pos);
    }

    @Override
    public void visit(ReturnNode it) {
        if(it.expr != null) {
            it.expr.accept(this);
            it.expr.type = new Type(retType);
        }
        else retType = new Type(Type.Type_kind.VOID,0,false);
        checker.special_judge(it.pos,globalscope,retType);

    }

    @Override
    public void visit(Sentence_ListNode it) {
//over
    }

//    @Override
//    public void visit(StmtNode it) {
//
//    }

    @Override
    public void visit(Suite_StmtNode it) {
        if(it.suiteNode != null){
            currentscope = new Scope(currentscope);//切换新作用域
            it.suiteNode.accept(this);
            currentscope = currentscope.parentScope();
        }else if(it.stmtNode != null){
            it.stmtNode.accept(this);
        }
    }

    @Override
    public void visit(SuiteNode it) {
        it.blockNodes.forEach(x -> {
            x.accept(this);
        });
    }

    @Override
    public void visit(TypeNode it) {
        if(it.ID != null){
            if(!globalscope.findclass(it.ID))throw new semanticError("cannot find class : " + it.ID,it.pos);
            retType = new Type(it.ID,it.dimension,true);
            it.type = new Type(retType);
        }else {
            retType = new Type(it.basicTypeNode.basicType,it.dimension,true);
            it.type = new Type(retType);
        }

    }

    @Override
    public void visit(UnaryExprNode it) {
        it.expr.accept(this);
        it.expr.type = new Type(retType);
        if(it.sign == UnaryExprNode.unarysign.NOT){
            if(retType.Type_name != Type.Type_kind.BOOL || retType.dims > 0){
                throw new semanticError("unarray1",it.pos);
            }
        }else {
            if(retType.Type_name != Type.Type_kind.INT || retType.dims > 0){
                throw new semanticError("unarray2",it.pos);
            }
        }
        retType.value = false;
        it.type = new Type(retType);
    }

    @Override
    public void visit(VarDefNode it) {
        it.typeNode.accept(this);
        it.type = new Type(retType);
        Type type= retType;
        it.varDefSentenceNodes.forEach(x -> {
            if(globalscope.findclass(x.name))throw new semanticError("var rename with class",x.pos);
            if(x.initialed_or_not){
                x.exprNode.accept(this);
               type.assigncheck(x.pos,globalscope,retType);
            }
            currentscope.addVariable(x.pos,x.name,type);
        });
    }

    @Override
    public void visit(VarDefSentenceNode it) {
//over
    }

    @Override
    public void visit(WhileStmtNode it) {
        it.exprNode.accept(this);
        it.exprNode.type = new Type(retType);
        if(retType.Type_name != Type.Type_kind.BOOL){
            throw new semanticError("while condition not bool",it.pos);
        }
        if(retType.dims > 0)throw new semanticError("while condition return not shuzu",it.pos);
        loop_number++;
        currentscope = new Scope(currentscope);
        it.suite_stmtNode.accept(this);
        currentscope = currentscope.parentScope();
        loop_number--;
    }

    @Override
    public void visit(NewersizeNode newersizeNode) {

    }
}
