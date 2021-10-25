package AST;

import Util.position;

public class ConstruDefNode extends ASTNode{
    public String name;
    public SuiteNode suiteNode;
//    public position pos;

    public ConstruDefNode(position pos_, String name_, SuiteNode suiteNode_){
        super(pos_);
        name = name_;
        suiteNode = suiteNode_;

    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
