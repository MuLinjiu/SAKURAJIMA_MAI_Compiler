package Backend;

import AST.*;
import MIR.*;
import Util.*;
import Util.Type.Type_kind;

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
        } else if(it.opt == BasicExprNode.option.BOOL){
            if(it.contex == "true"){
                returnentity = new constant(1);
            }else returnentity = new constant(1);
        } else {
            if(it.opt == BasicExprNode.option.Identifier){
                entity varentity = currentScope.getEntity(it.contex,true);//读出的地方
                IRTYPE irtype_ = ((register)varentity).type;
                //returnentity = varentity;/////////////
                returnentity = new register((curfunction.register_id),irtype_);
                currentblock.push_back(new load(irtype_,varentity,new register(curfunction.register_id++,irtype_)));

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
    }

    @Override
    public void visit(BlockNode it) {
        // TODO Auto-generated method stub
        it.stmtNode.accept(this);
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
        it.varDefSentenceNodes.forEach(x -> {
            int reg_id = 0;
            if(!ifgloabl) {
                reg_id = curfunction.register_id;
            }
            register reg = new register(reg_id,irtype);
            currentScope.entities.put(x.name,reg);
            currentblock.push_back(new alloca(reg,irtype));
            curfunction.register_id++;
            if(x.initialed_or_not){
                x.exprNode.accept(this);
                ////////////

                currentblock.push_back(new store(returnentity,reg,irtype));

            }

//            currentblock.push_back(new alloca(var_num++, irtype));
//            if(x.exprNode != null){
//                x.exprNode.accept(this);
//                if(returntype.Type_name == Type_kind.INT){
//                    if(returntype.name == null) {
//                        currentScope.add_ID_REG(x.name, var_num - 1);
//                        currentblock.push_back(new store(0, return_value_int, "NO_FROM", currentScope.Identifier_to_reg.get(x.name).toString(), irtype));
//
//                    }else {
//                        currentScope.add_ID_REG(x.name, var_num - 1);
//                        currentblock.push_back(new load(var_num++,irtype,returntype.name));
//                        currentblock.push_back(new store(1, return_value_int, Integer.toString(var_num - 1), currentScope.Identifier_to_reg.get(x.name).toString(), irtype));
//                    }
//                }else if(returntype.Type_name == Type_kind.BOOL){
//                    if(returntype.name == null) {
//                        currentScope.add_ID_REG(x.name, var_num - 1);
//                        currentblock.push_back(new store(0, return_value_int, "NO_FROM", currentScope.Identifier_to_reg.get(x.name).toString(), irtype));
//                    }else{
//                        currentScope.add_ID_REG(x.name, var_num - 1);
//                        currentblock.push_back(new load(var_num++,irtype,returntype.name));
//                        currentblock.push_back(new store(1, return_value_int, Integer.toString(var_num - 1), currentScope.Identifier_to_reg.get(x.name).toString(), irtype));
//
//                    }
//                }
//            }
        });
        
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
