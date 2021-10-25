package AST;

import Util.position;

public class PrePLUSMINUSExpr extends ExprNode{
    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }

    public enum presign{PLUS_PLUS, MINUS_MINUS}
    public ExprNode rhs;
    public presign sign;

    public PrePLUSMINUSExpr(position pos, ExprNode rhs_, presign sign_){
        super(pos);
        rhs = rhs_;
        sign = sign_;
    }
}
