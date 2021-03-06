package AST;

import Util.position;

public class ReturnNode extends StmtNode{
    public ExprNode expr;

    public ReturnNode(position pos, ExprNode expr_){
        super(pos);
        expr = expr_;
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
