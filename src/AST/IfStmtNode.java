package AST;

import Util.position;

public class IfStmtNode extends StmtNode{
    public ExprNode exprNode;
    public Suite_StmtNode suite_stmtNode;
    public ElseStmtNode elseStmtNode;

    public IfStmtNode(position pos, ExprNode exprNode_, Suite_StmtNode suite_stmtNode_, ElseStmtNode elseStmtNode_){
        super(pos);
        exprNode = exprNode_;
        suite_stmtNode = suite_stmtNode_;
        elseStmtNode = elseStmtNode_;
    }

    public IfStmtNode(position pos, ExprNode exprNode_, Suite_StmtNode suite_stmtNode_){
        super(pos);
        exprNode = exprNode_;
        suite_stmtNode = suite_stmtNode_;
       // ElseStmtNode = elseStmtNode_;
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }

}
