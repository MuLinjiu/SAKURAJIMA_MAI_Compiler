package AST;

import Util.position;

public class BracketExprNode extends ExprNode {
    public ExprNode expr;

    public BracketExprNode(position pos, ExprNode expr_){
        super(pos);
        expr = expr_;
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
