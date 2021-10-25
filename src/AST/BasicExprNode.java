package AST;

import Util.position;

public class BasicExprNode extends ExprNode{
    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }

    public enum option{
        Identifier, THIS, NULL, INT, BOOL, STRING
    }
    public option opt;
    public String contex;
//    public String Identifier_name;
//    public int int_num;
//    public boolean bool_num;
//    public String string_name;

    public BasicExprNode(position pos, option opt_, String contex_){
        super(pos);
        opt = opt_;
        contex = contex_;
    }
}
