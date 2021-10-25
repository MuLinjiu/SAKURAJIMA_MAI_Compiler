package AST;

import Util.position;

public class BasicTypeNode extends ASTNode{
    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }

    public enum basic_type{INT , BOOL , STRING}

    public basic_type basicType;
    public BasicTypeNode(position pos, basic_type basicType_){
        super(pos);
        basicType = basicType_;
    }

}
