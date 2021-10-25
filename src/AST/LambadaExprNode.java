package AST;

import Util.position;

public class LambadaExprNode extends ExprNode{
    public ParameterNode parameterNode;
    public SuiteNode suiteNode;
    public Sentence_ListNode sentence_listNode;

    public LambadaExprNode(position pos, ParameterNode parameterNode_, SuiteNode suiteNode_, Sentence_ListNode sentence_listNode_){
        super(pos);
        parameterNode = parameterNode_;
        suiteNode = suiteNode_;
        sentence_listNode = sentence_listNode_;
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
