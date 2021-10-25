package AST;

import Util.position;

import java.util.ArrayList;

public class ParameterListNode extends ASTNode{
    public ArrayList<ParameterNode>parameterNodes;

    public ParameterListNode(position pos){
        super(pos);
        parameterNodes = new ArrayList<ParameterNode>();
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }

}
