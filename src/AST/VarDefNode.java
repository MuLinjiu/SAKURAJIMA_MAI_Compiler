package AST;

import Util.Type;
import Util.position;

import java.util.ArrayList;

public class VarDefNode extends StmtNode{
    //public position pos;
    public TypeNode typeNode;
    public ArrayList<VarDefSentenceNode> varDefSentenceNodes;

    public VarDefNode(position pos_, TypeNode typeNode_){
        super(pos_);
        typeNode = typeNode_;
        varDefSentenceNodes = new ArrayList<>();
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
