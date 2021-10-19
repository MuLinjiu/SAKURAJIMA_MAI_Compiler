package AST;

import Util.position;

public class ForStmtNode extends StmtNode{
    public ForstartNode forstartNode;
    public ForfinishNode forfinishNode;
    public ExprNode exprNode;
    public Suite_StmtNode suite_stmtNode;

    public ForStmtNode(position pos, ForstartNode forstartNode_, ForfinishNode forfinishNode_, ExprNode exprNode_, Suite_StmtNode suite_stmtNode_){
        super(pos);
        forfinishNode = forfinishNode_;
        forstartNode = forstartNode_;
        exprNode = exprNode_;
        suite_stmtNode = suite_stmtNode_;
    }

}
