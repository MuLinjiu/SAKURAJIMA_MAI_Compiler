package AST;

import Util.position;

public class ElseStmtNode extends ASTNode{
    public Suite_StmtNode suite_stmtNode;

    public ElseStmtNode(position pos, Suite_StmtNode suite_stmtNode_){
        super(pos);
        suite_stmtNode = suite_stmtNode_;
    }
}
