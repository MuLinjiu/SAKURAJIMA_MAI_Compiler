package Frontend;

import AST.*;
import Util.*;
import Parser.*;
import Util.error.semanticError;

import java.util.ArrayList;

public class SymbolCollector implements ASTvisitor {

    private globalScope globalscope;
    private Scope currentscope;
    private ArrayList<Type> parameters;
    private Type retType;


    public SymbolCollector(Scope scope){
        globalscope = (globalScope)scope;
        currentscope = scope;
    }

    public void preprocess(position pos, globalScope scope_now){
        Scope fucscope = new Scope(scope_now);
        fucscope.addVariable(pos, "str", new Type(Type.Type_kind.STRING,0,true));
        ArrayList<Type> fucparameter = new ArrayList<>();
        fucparameter.add(new Type(Type.Type_kind.STRING,0,true));
        scope_now.addfunc(pos,"print",fucscope,new Type(Type.Type_kind.VOID,0,false),fucparameter);

        fucscope = new Scope(scope_now);
        fucscope.addVariable(pos, "str", new Type(Type.Type_kind.STRING,0,true));
        fucparameter = new ArrayList<>();
        fucparameter.add(new Type(Type.Type_kind.STRING,0,true));
        scope_now.addfunc(pos,"println",fucscope,new Type(Type.Type_kind.VOID,0,false),fucparameter);

        fucscope = new Scope(scope_now);
        fucscope.addVariable(pos, "n", new Type(Type.Type_kind.INT,0,true));
        fucparameter = new ArrayList<>();
        fucparameter.add(new Type(Type.Type_kind.INT,0,true));
        scope_now.addfunc(pos,"printInt",fucscope,new Type(Type.Type_kind.VOID,0,false),fucparameter);

        fucscope = new Scope(scope_now);
        fucscope.addVariable(pos, "n", new Type(Type.Type_kind.INT,0,true));
        fucparameter = new ArrayList<>();
        fucparameter.add(new Type(Type.Type_kind.INT,0,true));
        scope_now.addfunc(pos,"printlnInt",fucscope,new Type(Type.Type_kind.VOID,0,false),fucparameter);

        fucscope = new Scope(scope_now);
        fucparameter = new ArrayList<>();
        scope_now.addfunc(pos,"getString",fucscope,new Type(Type.Type_kind.STRING,0,true),fucparameter);

        fucscope = new Scope(scope_now);
        fucparameter = new ArrayList<>();
        scope_now.addfunc(pos,"getInt",fucscope,new Type(Type.Type_kind.INT,0,true),fucparameter);

        fucscope = new Scope(scope_now);
        fucscope.addVariable(pos, "i", new Type(Type.Type_kind.INT,0,true));
        fucparameter = new ArrayList<>();
        fucparameter.add(new Type(Type.Type_kind.INT,0,true));
        scope_now.addfunc(pos,"toString",fucscope,new Type(Type.Type_kind.STRING,0,true),fucparameter);
    }


    public void pre_process_func(position pos, globalScope newscope){
        Scope funcScope = new Scope(newscope);
        funcScope.addVariable(pos,"left",new Type(Type.Type_kind.INT,0,true));
        funcScope.addVariable(pos,"right",new Type(Type.Type_kind.INT,0,true));
        ArrayList<Type> funcparameter_ = new ArrayList<>();
        funcparameter_.add(new Type(Type.Type_kind.INT, 0, true));
        funcparameter_.add(new Type(Type.Type_kind.INT, 0, true));
        newscope.addfunc(pos,"substring",funcScope,new Type(Type.Type_kind.STRING,0,true),funcparameter_);
        newscope.addfunc(pos,"parseInt",new Scope(),new Type(Type.Type_kind.INT,0,true),new ArrayList<>());

        funcScope = new Scope(newscope);
        funcScope.addVariable(pos,"pos",new Type(Type.Type_kind.INT,0,true));
        funcparameter_ = new ArrayList<>();
        funcparameter_.add(new Type(Type.Type_kind.INT,0,true));
        newscope.addfunc(pos,"ord",funcScope,new Type(Type.Type_kind.INT,0,true),funcparameter_);

    }

    @Override
    public void visit(RootNode it) {
        it.defNodes.forEach(x -> {
            if(x instanceof ClassDefNode){
                globalScope newscope = new globalScope(currentscope,((ClassDefNode)x).name);
                ((globalScope)currentscope).addclass(it.pos,((ClassDefNode)x).name,newscope);
            }
        });
        it.defNodes.forEach(x -> {
            if(x instanceof ClassDefNode){
                x.accept(this);
            }
        });

        it.defNodes.forEach(x -> {
            if(x instanceof FucDefNode){
                x.accept(this);
            }
        });


        globalScope newscope = new globalScope(currentscope,"_ARRAY");
        ((globalScope)currentscope).addclass(it.pos,"_ARRAY",newscope);
        newscope.addfunc(it.pos,"size",new Scope(),new Type(Type.Type_kind.INT,0,true),new ArrayList<>());

        newscope = new globalScope(currentscope,"string");

        ((globalScope)currentscope).addclass(it.pos,"string",newscope);
        newscope.addfunc(it.pos,"length",new Scope(),new Type(Type.Type_kind.INT,0,true),new ArrayList<>());

        pre_process_func(it.pos,newscope);

        preprocess(it.pos,globalscope);
    }

    @Override
    public void visit(ArrayExprNode it) {

    }

    @Override
    public void visit(BackPLUSMINUSExpr it) {

    }

    @Override
    public void visit(BasicExprNode it) {

    }

    @Override
    public void visit(BasicTypeNode it) {

    }

    @Override
    public void visit(BinaryExprNode it) {

    }

    @Override
    public void visit(BlockNode it) {

    }

    @Override
    public void visit(BracketExprNode it) {

    }

    @Override
    public void visit(BreakNode it) {

    }

    @Override
    public void visit(ClassDefNode it) {
        currentscope = ((globalScope)currentscope).getscopefromclass(it.pos,it.name);
        globalscope = ((globalScope) currentscope);
        it.funcDef.forEach(x -> x.accept(this));
        it.varDef.forEach(x -> x.accept(this));
        globalscope = (globalScope) globalscope.parentScope();
        currentscope = (globalScope) currentscope.parentScope();//访问完节点scope上传
    }

    @Override
    public void visit(ConstruDefNode it) {

    }

    @Override
    public void visit(ContinueNode it) {

    }

    @Override
    public void visit(ElseStmtNode it) {

    }

    @Override
    public void visit(ForfinishNode it) {

    }

    @Override
    public void visit(ForstartNode it) {

    }

    @Override
    public void visit(ForStmtNode it) {

    }

    @Override
    public void visit(FucDefNode it) {
        Type type;
        if(it.fucTypeNode.void_or_not){
            type = new Type(Type.Type_kind.VOID,0,false);
        }else{
            it.fucTypeNode.typeNode.accept(this);
            type = retType;
        }
        Scope newscope = new Scope(currentscope);
        currentscope = newscope;
        it.parameterListNode.accept(this);
        currentscope = currentscope.parentScope();
        ((globalScope) currentscope).addfunc(it.pos,it.name,newscope,type,parameters);
        it.type = type;
    }

    @Override
    public void visit(FucTypeNode it) {

    }

    @Override
    public void visit(Global_var_define_youfen it) {

    }

    @Override
    public void visit(HanshuDiaoyongExprNode it) {

    }

    @Override
    public void visit(IfStmtNode it) {

    }

    @Override
    public void visit(LambadaExprNode it) {

    }

    @Override
    public void visit(NewerNode it) {
        System.out.println(1);
    }

    @Override
    public void visit(ParameterNode it) {
        it.typeNode.accept(this);
        currentscope.addVariable(it.pos,it.name,retType);
        parameters.add(retType);
    }

    @Override
    public void visit(ParameterListNode it) {
        parameters = new ArrayList<>();
        it.parameterNodes.forEach(x -> {
            x.accept(this);
        });
    }

    @Override
    public void visit(PrePLUSMINUSExpr it) {

    }

    @Override
    public void visit(ReturnNode it) {

    }

    @Override
    public void visit(Sentence_ListNode it) {

    }

    @Override
    public void visit(Suite_StmtNode it) {

    }

    @Override
    public void visit(SuiteNode it) {

    }

    @Override
    public void visit(TypeNode it) {
        if(it.ID != null){
            if(!globalscope.findclass(it.ID)){
                throw new semanticError("Semantic Error : cannot find the class1 : " + it.ID, it.pos);
            }
            retType = new Type(it.ID, it.dimension,true);
        }
        else{
            retType = new Type(it.basicTypeNode.basicType,it.dimension,true);
        }
        it.type = retType;
    }

    @Override
    public void visit(UnaryExprNode it) {

    }

    @Override
    public void visit(VarDefNode it) {
        it.typeNode.accept(this);
        Type type = retType;
        it.varDefSentenceNodes.forEach(x -> {
            if(globalscope.findclass(x.name))throw new semanticError("Semantic Error : variable rename with class" + x.name, x.pos);
            currentscope.addVariable(x.pos,x.name,type);
            if(x.initialed_or_not)throw new semanticError("Semantic Error : variable cannot be initialized in class" + x.name, x.pos);
        });
        it.type = type;
    }

    @Override
    public void visit(VarDefSentenceNode it) {

    }

    @Override
    public void visit(WhileStmtNode it) {

    }

    @Override
    public void visit(NewersizeNode newersizeNode) {

    }
}
