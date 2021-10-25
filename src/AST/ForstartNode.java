package AST;

import Util.position;

public class ForstartNode extends ASTNode{

    public ExprNode exprNode;
    public VarDefNode varDefNode;

    public ForstartNode(position pos, ExprNode exprNode_){
        super(pos);
        exprNode = exprNode_;
    }

    public ForstartNode(position pos, VarDefNode varDefNode_){
        super(pos);
        varDefNode = varDefNode_;
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
