package AST;

import Util.position;

public class BlockNode extends ASTNode{
    public StmtNode stmtNode;
    public SuiteNode suiteNode;

    public BlockNode(position pos, SuiteNode suiteNode_){
        super(pos);
        suiteNode = suiteNode_;
    }

    public BlockNode(position pos, StmtNode stmtNode_){
        super(pos);
        stmtNode = stmtNode_;
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
