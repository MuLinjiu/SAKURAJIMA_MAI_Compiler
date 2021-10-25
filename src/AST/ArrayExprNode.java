package AST;

import Util.position;

public class ArrayExprNode extends ExprNode{
    public ExprNode name, index;

    public ArrayExprNode(position pos, ExprNode name_, ExprNode index_){
        super(pos);
        name = name_;
        index = index_;
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
