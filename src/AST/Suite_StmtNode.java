package AST;

import Util.position;

public class Suite_StmtNode extends ASTNode{

    public SuiteNode suiteNode;
    public StmtNode stmtNode;

    public Suite_StmtNode(position pos, SuiteNode suiteNode_, StmtNode stmtNode_){
        super(pos);
        suiteNode = suiteNode_;
        stmtNode = stmtNode_;
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
