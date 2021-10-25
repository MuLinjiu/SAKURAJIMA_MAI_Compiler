package AST;

import Util.position;

public class FucTypeNode extends ASTNode{
    public TypeNode typeNode;
    boolean void_or_not;

    public FucTypeNode(position pos, boolean void_or_not_){
        super(pos);
        void_or_not = void_or_not_;
    }

    public FucTypeNode(position pos, boolean void_or_not_, TypeNode typeNode_){
        super(pos);
        void_or_not = void_or_not_;
        typeNode = typeNode_;
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
