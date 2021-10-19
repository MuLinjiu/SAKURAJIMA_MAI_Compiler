package AST;

import Util.position;

public class ForfinishNode extends ASTNode{
    public ExprNode exprNode;

    public ForfinishNode(position pos, ExprNode exprNode_){
        super(pos);
        exprNode = exprNode_;
    }
}
