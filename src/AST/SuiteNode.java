package AST;

import Util.position;

import java.util.ArrayList;

public class SuiteNode extends ASTNode{
    public ArrayList<BlockNode> blockNodes;

    public SuiteNode(position pos){
        super(pos);
        blockNodes = new ArrayList<BlockNode>();
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }

}
