package AST;

import Util.position;

public class BinaryExprNode extends ExprNode{
    public ExprNode lhs, rhs;

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }

    public enum binarysign{STAR, DIVIDE, MOD, ADD, MINUS, LEFT_SHIFT, RIGHT_SHIFT, GREATER, LESS, GREATER_E, LESS_E,EQUAL,
        NOT_EQUAL, AND , XOR , OR, AND_AND , OR_OR, ASSIGN, DOT}
    public binarysign sign;

    public BinaryExprNode(position pos, ExprNode lhs_, ExprNode rhs_, binarysign sign_){
        super(pos);
        lhs = lhs_;
        rhs = rhs_;
        sign = sign_;
    }
}
