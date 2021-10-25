package AST;

import Util.position;

public class HanshuDiaoyongExprNode extends ExprNode{
    public ExprNode expr;
    public Sentence_ListNode sen_list;

    public HanshuDiaoyongExprNode(position pos, ExprNode expr_, Sentence_ListNode sen_list_){
        super(pos);
        expr = expr_;
        sen_list = sen_list_;
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
