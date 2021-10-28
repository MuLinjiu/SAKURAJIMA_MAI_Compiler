package AST;

import Util.position;

public class ContinueNode extends StmtNode{
    public ContinueNode(position pos){super(pos);}

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }


}
