package AST;

import Util.position;

import java.util.ArrayList;

public class ClassDefNode extends DefNode {
    public String name;
    public ArrayList<FucDefNode> funcDef;
    public ArrayList<VarDefNode> varDef;
    public ConstruDefNode construDefNode;


    public ClassDefNode(position pos, String name_){
        name = name_;
        super(pos);
        funcDef = new ArrayList<FucDefNode>();
        varDef = new ArrayList<VarDefNode>();
    }

    @Override
    public void accept(ASTvisitor visitor) {
        visitor.visit(this);
    }
}
