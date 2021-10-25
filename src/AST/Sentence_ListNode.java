package AST;

import Util.position;

import java.util.ArrayList;

public class Sentence_ListNode extends ASTNode{
    public ArrayList<ExprNode>exprNodes;

    public Sentence_ListNode(position pos){
        super(pos);
        exprNodes = new ArrayList<ExprNode>();
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
