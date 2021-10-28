package AST;

import Util.position;

public class LambadaExprNode extends ExprNode{
    public ParameterListNode parameterListNode;
    public SuiteNode suiteNode;
    public Sentence_ListNode sentence_listNode;

    public LambadaExprNode(position pos, ParameterListNode parameterListNode_, SuiteNode suiteNode_, Sentence_ListNode sentence_listNode_){
        super(pos);
        parameterListNode = parameterListNode_;
        suiteNode = suiteNode_;
        sentence_listNode = sentence_listNode_;
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
