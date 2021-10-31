package AST;

import Util.position;

import java.util.ArrayList;

public class NewerNode extends ExprNode{
    public String Classname;
    public BasicTypeNode basicTypeNode;
    public ArrayList<NewersizeNode> neworsize;
    int dims;
    public NewerNode(position pos, String Classname_,BasicTypeNode basicTypeNode_){
        super(pos);
        Classname = Classname_;
        basicTypeNode = basicTypeNode_;
        neworsize = new ArrayList<>();
    }

//    public NewerNode(position pos, BasicTypeNode basicTypeNode_,int dims_){
//        super(pos);
//        basicTypeNode = basicTypeNode_;
//        basictype_or_not = true;
//        sizeofdim = new ArrayList<>();
//        dims = dims_;
//    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
