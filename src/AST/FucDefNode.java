package AST;

import Util.position;

public class FucDefNode extends DefNode{
    public FucTypeNode fucTypeNode;
    public String name;
    public ParameterListNode parameterListNode;
    public SuiteNode suiteNode;

    public FucDefNode(position pos, FucTypeNode fucTypeNode_, String name_, ParameterListNode parameterListNode_, SuiteNode suiteNode_){
        super(pos);
        name = name_;
        fucTypeNode = fucTypeNode_;
         parameterListNode = parameterListNode_;
         suiteNode = suiteNode_;
    }
}
