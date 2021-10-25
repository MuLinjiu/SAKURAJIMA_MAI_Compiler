package AST;

import Util.position;

public class WhileStmtNode extends StmtNode{
    public ExprNode exprNode;
    public Suite_StmtNode suite_stmtNode;

    public WhileStmtNode(position pos, ExprNode exprNode_, Suite_StmtNode suiteNode_){
        super(pos);
        exprNode = exprNode_;
        suite_stmtNode = suiteNode_;
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
