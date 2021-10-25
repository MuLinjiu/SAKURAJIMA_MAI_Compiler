package AST;

import Util.position;

public class UnaryExprNode extends ExprNode{
    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }

    public enum unarysign{ADD, MINUS, NOT, FAN}
    public ExprNode expr;
    public unarysign sign;

    public UnaryExprNode(position pos, ExprNode expr_, unarysign sign_){
        super(pos);
        expr = expr_;
        sign = sign_;
    }
}
