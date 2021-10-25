package AST;

import Util.position;

import java.util.ArrayList;

public class RootNode extends ASTNode{
    public ArrayList<DefNode>defNodes;

    public RootNode(position pos){
        super(pos);
        defNodes = new ArrayList<DefNode>();
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }


}
