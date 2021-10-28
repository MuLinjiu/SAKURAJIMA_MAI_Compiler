package AST;

import Util.position;

import java.util.ArrayList;

public class NewerNode extends ExprNode{
    public String Classname;
    public Boolean basictype_or_not;
    public BasicTypeNode basicTypeNode;
    public ArrayList<ExprNode>sizeofdim;
    int dims;
    public NewerNode(position pos, String Classname_,int dims_){
        super(pos);
        Classname = Classname_;
        basictype_or_not = false;
        sizeofdim = new ArrayList<>();
        dims = dims_;
    }

    public NewerNode(position pos, BasicTypeNode basicTypeNode_,int dims_){
        super(pos);
        basicTypeNode = basicTypeNode_;
        basictype_or_not = true;
        sizeofdim = new ArrayList<>();
        dims = dims_;
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
