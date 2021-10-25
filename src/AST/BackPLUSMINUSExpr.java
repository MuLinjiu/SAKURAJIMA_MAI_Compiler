package AST;

import Util.position;

public class BackPLUSMINUSExpr extends ExprNode{
    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }

    public enum backsign{PLUS_PLUS, MINUS_MINUS}
    public ExprNode lhs;
    public backsign sign;

    public BackPLUSMINUSExpr(position pos, ExprNode lhs_, backsign sign_){
        super(pos);
        lhs = lhs_;
        sign = sign_;
    }
}
