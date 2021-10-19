package AST;

import Util.position;

public class BasicTypeNode extends ASTNode{
    public enum basic_type{INT , BOOL , STRING}

    public basic_type basicType;
    public BasicTypeNode(position pos, basic_type basicType_){
        super(pos);
        basicType = basicType_;
    }

}
