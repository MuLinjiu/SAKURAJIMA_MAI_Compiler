package AST;

import Util.position;

public class TypeNode extends ASTNode{
    public String returntype;
    public BasicTypeNode basicTypeNode;
    boolean shuzu_or_not;
    int dimension;

    public TypeNode(position pos, String a, BasicTypeNode basicTypeNode_, int b){
        super(pos);
        returntype = a;
        basicTypeNode = basicTypeNode_;
        dimension = b;
        shuzu_or_not = b >= 2;
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
