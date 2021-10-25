package AST;

import Util.position;

import java.util.ArrayList;

public class SuiteNode extends ASTNode{
    public SuiteNode suiteNode;
    public ArrayList<StmtNode> stmtNodes;

    public SuiteNode(position pos, SuiteNode suiteNode_){
        super(pos);
        stmtNodes = new ArrayList<StmtNode>();
        suiteNode = suiteNode_;
    }

    public SuiteNode(position pos){
        super(pos);
        stmtNodes = new ArrayList<StmtNode>();
        //suiteNode = suiteNode_;
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }

}
