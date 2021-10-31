package AST;

import Util.position;

public class Global_var_define_youfen extends DefNode{

    public VarDefNode varDefNode;

    public Global_var_define_youfen(position pos,VarDefNode varDefNode_){
        super(pos);
        varDefNode = varDefNode_;
    }
    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
