package AST;

import Util.Type;
import Util.position;

public class BasicTypeNode extends ASTNode{
    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }

    public Type.Type_kind basicType;
    public BasicTypeNode(position pos, Type.Type_kind basicType_){
        super(pos);
        basicType = basicType_;
    }

}
