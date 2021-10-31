package AST;

import Util.position;

public class TypeNode extends ASTNode{
    public String ID;
    public BasicTypeNode basicTypeNode;
    public boolean shuzu_or_not;
    public int dimension;

    public TypeNode(position pos, String a, int b){
        super(pos);
        ID = a;
        //basicTypeNode = basicTypeNode_;
        dimension = b;
        shuzu_or_not = b >= 1;
    }

    public TypeNode(position pos, BasicTypeNode basicTypeNode_, int d){
        super(pos);
        ID = null;
        basicTypeNode = basicTypeNode_;
        dimension = d;
        shuzu_or_not = d >= 1;
    }


    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
