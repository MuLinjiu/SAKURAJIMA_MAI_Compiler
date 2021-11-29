package Backend;

import AST.*;
import MIR.*;
import Util.*;
import Util.Type.Type_kind;

public class IRBuilder implements ASTvisitor{

    private block currentblock;
    private mainFn mainfn;
    private Scope currentScope;
    private globalScope gScope;
    private Type returntype;
    private int var_num;

    public IRBuilder(mainFn mainfn_, globalScope globalscope){
        //currentblock = currentblock_;
        mainfn = mainfn_;
        //currentScope = scope;
        gScope = globalscope;
        currentblock = mainfn.rootBlock;
        //returntype = type_;
        var_num = 0;
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

    @Override
    public void visit(BasicExprNode it) {
        // TODO Auto-generated method stub
        
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
        
    }

    @Override
    public void visit(FucTypeNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(Global_var_define_youfen it) {
        // TODO Auto-generated method stub
        it.varDefNode.accept(this);
        
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
        
    }

    @Override
    public void visit(TypeNode it) {
        // TODO Auto-generated method stub
        if(it.ID != null){
            returntype = new Type(it.ID, it.dimension, true);
        }else returntype = new Type(it.basicTypeNode.basicType, it.dimension, true);
    }

    @Override
    public void visit(UnaryExprNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(VarDefNode it) {
        it.typeNode.accept(this);
        Type ret = returntype;
        IRTYPE irtype;
        if(ret.Type_name == Type_kind.INT){
            irtype = new INT_TYPE(32);
        }else if(ret.Type_name == Type_kind.BOOL){
            irtype = new INT_TYPE(8);
        }
        else {//continue
            irtype = new INT_TYPE(13);
        }
        // TODO Auto-generated method stub
        it.varDefSentenceNodes.forEach(x ->{
            currentblock.push_back(new alloca(var_num++, irtype));
            if(x.exprNode != null){//同ASTBUILDER
                x.exprNode.accept(this);
            }
        });
        
    }

    @Override
    public void visit(VarDefSentenceNode it) {
        // TODO Auto-generated method stub
        //不用xie 

        
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
