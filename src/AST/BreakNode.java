package AST;

import Util.position;

public class BreakNode extends StmtNode{
    public BreakNode(position pos){super(pos);}

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }

}
