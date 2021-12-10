package Backend;

import AST.*;
import MIR.*;
import Util.*;
import Util.Type.Type_kind;
import org.antlr.v4.runtime.Parser;

import java.util.ArrayList;
import java.util.Objects;

public class IRBuilder implements ASTvisitor{
    private Global_def global_def;
    private block currentblock;
    private mainFn mainfn;
    private Scope currentScope;
    private function curfunction;
    private globalScope gScope;
    private entity returnentity;
    private String global_return_value;

    private boolean need_copy;


    public void type_transfer(entity from, entity to){
        int from_w = ((INT_TYPE)((register)from).type).width;
        int to_w = ((INT_TYPE)((register)to).type).width;

        if(from_w > to_w){
            currentblock.push_back(new trunc(((register)from).type,((register)to).type,from,to));
        }else if(from_w < to_w){
            currentblock.push_back(new zext(((register)from).type,((register)to).type,from,to));
        }
    }

    public boolean compare(BinaryExprNode.binarysign op){
        return op == BinaryExprNode.binarysign.GREATER || op == BinaryExprNode.binarysign.GREATER_E || op == BinaryExprNode.binarysign.LESS ||
                op == BinaryExprNode.binarysign.LESS_E || op == BinaryExprNode.binarysign.EQUAL || op == BinaryExprNode.binarysign.NOT_EQUAL;
    }

    public boolean aritnmatic(BinaryExprNode.binarysign op){
        return !compare(op) && op != BinaryExprNode.binarysign.ASSIGN && op != BinaryExprNode.binarysign.AND_AND && op != BinaryExprNode.binarysign.OR_OR && op != BinaryExprNode.binarysign.DOT;
    }


    public boolean ifgloabl = false;
//    private int var_num;
//    private int return_value_int;
//    private boolean return_type_is_identifier;

    public IRBuilder(Global_def global_def_, globalScope globalscope){
        //currentblock = currentblock_;
        global_def = global_def_;
        //currentScope = scope;
        gScope = globalscope;
        currentScope = globalscope;
        need_copy = true;
        //currentblock = mainfn.rootBlock;
        //returntype = type_;
        //var_num = 0;
    }

    public IRTYPE type_to_irtype(Type type){
        IRTYPE irtype_;
        if(type.Type_name == Type_kind.INT){
            irtype_ = new INT_TYPE(32);
            //System.out.println(32);
        }else if(type.Type_name == Type_kind.BOOL){
            irtype_ = new INT_TYPE(8);
            //System.out.println(8);
        }else irtype_ = new INT_TYPE(32);
        return irtype_;
    }

    @Override
    public void visit(RootNode it) {
        // TODO Auto-generated method stub
        it.defNodes.forEach(x -> {
            x.accept(this);
        });
        
    }

    @Override
    public void visit(ArrayExprNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(BackPLUSMINUSExpr it) {
        // TODO Auto-generated method stub
        
    }


//    @Override
//    public void visit(StmtNode it) {
//
//    }

    @Override
    public void visit(BasicExprNode it) {
        // TODO Auto-generated method stub
    //System.out.println("");
        if(it.opt == BasicExprNode.option.INT){
            returnentity = new constant(Integer.parseInt(it.contex));
            if(ifgloabl)global_return_value = it.contex;
        } else if(it.opt == BasicExprNode.option.BOOL){
            if(Objects.equals(it.contex, "true")){
                returnentity = new constant(1);
                if(ifgloabl)global_return_value = "1";
            }else {
                returnentity = new constant(0);
                if(ifgloabl)global_return_value = "0";
            }
        } else {
            if(it.opt == BasicExprNode.option.Identifier){
                if(!ifgloabl) {
                    entity varentity = currentScope.getEntity(it.contex, true);//读出的地方
                    IRTYPE irtype_ = ((register) varentity).type;
                    //returnentity = varentity;/////////////
                    if(need_copy) {
                        returnentity = new register((curfunction.register_id), irtype_);
                        currentblock.push_back(new load(irtype_, varentity, new register(curfunction.register_id++, irtype_)));

                    }else{
                        returnentity = varentity;
                    }

                    }else{
// init 函数
                }
            }
        }
//        if(it.opt == BasicExprNode.option.THIS){
//            returnentity = new constant();
//        }
//        else if(it.opt == BasicExprNode.option.NULL){
//            returntype = new Type(Type.Type_kind.NULL,0,false);
//        }
//        else if(it.opt == BasicExprNode.option.INT){
//            returntype = new Type(Type.Type_kind.INT,0,false);
//            return_value_int = Integer.parseInt(it.contex);
//        }
//        else if(it.opt == BasicExprNode.option.BOOL){
//            returntype = new Type(Type.Type_kind.BOOL,0,false);
//            return_value_int = (!Objects.equals(it.contex, "0") && !Objects.equals(it.contex, "false"))?1:0;
//        }
//        else if(it.opt == BasicExprNode.option.STRING){
//            returntype = new Type(Type.Type_kind.STRING,0,false);
//        }
//        else if(it.opt == BasicExprNode.option.Identifier){
//            returntype = new Type(Type_kind.Identifier,0,false,it.contex);
//        }
//        else {
//            returntype = new Type(Type_kind);
//            if(fucid){
//                Type type = globalscope.getretTypefromfuc(it.pos,it.contex);
//                ArrayList<Type> parameter = globalscope.getparameterlistfromfuc(it.pos,it.contex);
//
//            }else {
//                retType = new Type(currentscope.getType(it.pos,it.contex,true));
//            }
//        }
    }

    @Override
    public void visit(BasicTypeNode it) {
        // TODO Auto-generated method stub
    }

    @Override
    public void visit(BinaryExprNode it) {
        // TODO Auto-generated method stub
        if(compare(it.sign)){
            it.lhs.accept(this);
            Type lhs_type = it.lhs.type;
            entity left = returnentity;
            it.rhs.accept(this);
            Type rhs_type = it.rhs.type;
            entity right = returnentity;

            if(lhs_type.Type_name == Type_kind.INT){
                //还需加global or not
                currentblock.push_back(new binary(type_to_irtype(lhs_type),left,right,new register(curfunction.register_id,type_to_irtype(lhs_type)), binary.opType.values()[it.sign.ordinal()]));
                curfunction.register_id++;
                returnentity = new register(curfunction.register_id - 1,new INT_TYPE(1));
            }//String left
        }else if(aritnmatic(it.sign)){
            it.lhs.accept(this);
            Type lhs_type = it.lhs.type;
            entity left = returnentity;
            it.rhs.accept(this);
            Type rhs_type = it.rhs.type;
            entity right = returnentity;

            if(lhs_type.Type_name == Type_kind.INT){
                //还需加global or not
                currentblock.push_back(new binary(type_to_irtype(lhs_type),left,right,new register(curfunction.register_id,type_to_irtype(lhs_type)), binary.opType.values()[it.sign.ordinal()]));
                curfunction.register_id++;
                returnentity = new register(curfunction.register_id - 1,type_to_irtype(lhs_type));
            }//String left
        } else if(it.sign == BinaryExprNode.binarysign.ASSIGN){
            need_copy = false;
            it.lhs.accept(this);
            Type lhs_type = it.lhs.type;
            entity left = returnentity;
            need_copy = true;
            it.rhs.accept(this);
            Type rhs_type = it.rhs.type;
            entity right = returnentity;
            currentblock.push_back(new store(right,left,type_to_irtype(lhs_type)));
            returnentity = right;
        } else if(it.sign == BinaryExprNode.binarysign.AND_AND){

        }else if(it.sign == BinaryExprNode.binarysign.OR_OR){

        }else if(it.sign == BinaryExprNode.binarysign.DOT){

        }
    }

    @Override
    public void visit(BlockNode it) {
        // TODO Auto-generated method stub
        if(it.stmtNode != null)it.stmtNode.accept(this);
        if(it.suiteNode != null)it.suiteNode.accept(this);
        
    }

    @Override
    public void visit(BracketExprNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(BreakNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(ClassDefNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(ConstruDefNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(ContinueNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(ElseStmtNode it) {
        // TODO Auto-generated method stub
        it.suite_stmtNode.accept(this);

        
    }

    @Override
    public void visit(ForfinishNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(ForstartNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(ForStmtNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(FucDefNode it) {
        // TODO Auto-generated method stub
        function func = new function(it.name);
        curfunction = func;
        global_def.functions.add(func);
        currentblock = func.rootblock;
        currentScope = gScope.getscopefromfuc(it.pos,it.name);
        it.suiteNode.accept(this);
        currentScope = currentScope.parentScope();
        
    }

    @Override
    public void visit(FucTypeNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(Global_var_define_youfen it) {
        // TODO Auto-generated method stub
        ifgloabl = true;
        it.varDefNode.accept(this);
        ifgloabl = false;
    }

    @Override
    public void visit(HanshuDiaoyongExprNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(IfStmtNode it) {
        // TODO Auto-generated method stub
        it.exprNode.accept(this);
        if(returnentity instanceof register && ((INT_TYPE)((register)returnentity).type).width != 1){
            register i1 = new register(curfunction.register_id++,new INT_TYPE(1));
            type_transfer(returnentity,i1);
            returnentity = i1;
        }
        //保证已经为i1

        label true_label = new label(curfunction.register_id++);
        label false_label = new label(curfunction.register_id++);
        //label outif = new label(curfunction.register_id++);
        branch branch_ = new branch(true_label,false_label,returnentity);//dizhi
        currentblock.push_back(branch_);
        if(it.elseStmtNode != null) {// if else
            label outif = new label(curfunction.register_id++);
            block true_block = new block(Integer.toString(curfunction.register_id - 3));
            block false_block = new block(Integer.toString(curfunction.register_id - 2));
            block outif_block = new block(Integer.toString(curfunction.register_id - 1));


            currentblock = true_block;
            currentScope = new Scope(currentScope);
            it.suite_stmtNode.accept(this);
            currentblock.push_back(new branch(outif));
            currentScope = currentScope.parentScope();
            curfunction.blocks.add(true_block);


            currentblock = false_block;
            currentScope = new Scope(currentScope);
            it.elseStmtNode.accept(this);
            currentblock.push_back(new branch(outif));
            currentScope = currentScope.parentScope();
            curfunction.blocks.add(false_block);

            curfunction.blocks.add(outif_block);


            currentblock = outif_block;
//            currentblock.push_back(new branch(outif));
//            currentScope = currentScope.parentScope();
        }else{
            block true_block = new block(Integer.toString(curfunction.register_id - 2));
            block false_block = new block(Integer.toString(curfunction.register_id - 1));


            currentScope = new Scope(currentScope);
            currentblock = true_block;
            it.suite_stmtNode.accept(this);
            currentblock.push_back(new branch(false_label));//跳转到false
            currentScope = currentScope.parentScope();
            curfunction.blocks.add(true_block);

            curfunction.blocks.add(false_block);
            currentblock = false_block;

        }







        
    }

    @Override
    public void visit(LambadaExprNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(NewerNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(ParameterNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(ParameterListNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(PrePLUSMINUSExpr it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(ReturnNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(Sentence_ListNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(Suite_StmtNode it) {
        // TODO Auto-generated method stub
        if(it.stmtNode != null)it.stmtNode.accept(this);
        if(it.suiteNode != null)it.suiteNode.accept(this);
    }

    @Override
    public void visit(SuiteNode it) {
        // TODO Auto-generated method stub
        it.blockNodes.forEach(x -> {
            x.accept(this);
        });
        
    }

    @Override
    public void visit(TypeNode it) {
        // TODO Auto-generated method stub
//        if(it.ID != null){
//            returntype = new Type(it.ID, it.dimension, true);
//        }else returntype = new Type(it.basicTypeNode.basicType, it.dimension, true);
    }

    @Override
    public void visit(UnaryExprNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(VarDefNode it) {
        it.typeNode.accept(this);
        Type ret = it.typeNode.type;
        IRTYPE irtype = type_to_irtype(ret);
//        if(ret.Type_name == Type_kind.INT){
//            irtype = new INT_TYPE(32);
//        }else if(ret.Type_name == Type_kind.BOOL){
//            irtype = new INT_TYPE(8);
//        }
//        else {//continue
//            irtype = new INT_TYPE(13);
//        }
        // TODO Auto-generated method stub
        if(!ifgloabl) {
            it.varDefSentenceNodes.forEach(x -> {
                int reg_id = curfunction.register_id;
                register reg = new register(reg_id, irtype);
                currentScope.entities.put(x.name, reg);
                currentblock.push_back(new alloca(reg, irtype));
                curfunction.register_id++;
                if (x.initialed_or_not) {
                    x.exprNode.accept(this);
                    ////////////
                    if(returnentity instanceof register){
                        type_transfer(returnentity,reg);
                    }
                    currentblock.push_back(new store(returnentity, reg, irtype));
                }
            });
        } else {//global
            it.varDefSentenceNodes.forEach(x -> {
                if(ret.Type_name == Type_kind.INT){
                    if(x.initialed_or_not){
                        x.exprNode.accept(this);//获取变量名之类
                        Global_register global_register = new Global_register(irtype,x.name);
                        gScope.entities.put(x.name,global_register);
                        global_def.global_def_stmts.add(new dso_local_global(global_register,irtype,Integer.parseInt(global_return_value)));
                    }else {
                        Global_register global_register = new Global_register(irtype,x.name);
                        gScope.entities.put(x.name,global_register);
                        global_def.global_def_stmts.add(new dso_local_global(global_register,irtype,0));
                    }
                }else if(ret.Type_name == Type_kind.BOOL){
                    if(x.initialed_or_not){
                        x.exprNode.accept(this);//获取变量名之类
                        Global_register global_register = new Global_register(irtype,x.name);
                        gScope.entities.put(x.name,global_register);
                        global_def.global_def_stmts.add(new dso_local_global(global_register,irtype,Integer.parseInt(global_return_value)));
                    }else{
                        Global_register global_register = new Global_register(irtype,x.name);
                        gScope.entities.put(x.name,global_register);
                        global_def.global_def_stmts.add(new dso_local_global(global_register,irtype,0));
                    }
                }
//                int reg_id = curfunction.register_id;
//                register reg = new register(reg_id, irtype);
//                currentScope.entities.put(x.name, reg);
//                currentblock.push_back(new alloca(reg, irtype));
//                curfunction.register_id++;
//                if (x.initialed_or_not) {
//                    x.exprNode.accept(this);
//                    ////////////
//                    currentblock.push_back(new store(returnentity, reg, irtype));
//                }
            });
        }
        
    }

    @Override
    public void visit(VarDefSentenceNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(WhileStmtNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(NewersizeNode newersizeNode) {
        // TODO Auto-generated method stub
        
    }
    
}
