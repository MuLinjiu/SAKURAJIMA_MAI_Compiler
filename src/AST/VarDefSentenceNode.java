package AST;

import Util.position;

public class VarDefSentenceNode extends ASTNode{
    public String name;
    public ExprNode exprNode;
    public boolean initialed_or_not;

    public VarDefSentenceNode(position pos, String name_){
        super(pos);
        name = name_;
        initialed_or_not = false;
    }

    public VarDefSentenceNode(position pos, String name_, ExprNode exprNode_){
        super(pos);
        name = name_;
        exprNode = exprNode_;
        initialed_or_not = true;
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
