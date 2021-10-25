package AST;

import Util.position;

public class ForfinishNode extends ASTNode{
    public ExprNode exprNode;

    public ForfinishNode(position pos, ExprNode exprNode_){
        super(pos);
        exprNode = exprNode_;
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
