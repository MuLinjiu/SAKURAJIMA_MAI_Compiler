package AST;
import Util.position;

public class NewersizeNode extends ASTNode{
    public ExprNode expr;

    public NewersizeNode(position pos,ExprNode exprNode){
        super(pos);
        expr = exprNode;
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
