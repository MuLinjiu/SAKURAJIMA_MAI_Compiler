package AST;

import Util.position;

public class ParameterNode extends ASTNode{
    public String name;
    public TypeNode typeNode;

    public ParameterNode(position pos, String name_, TypeNode typeNode_){
        super(pos);
        name = name_;
        typeNode = typeNode_;
    }
}
