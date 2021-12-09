package AST;

import Util.Type;
import Util.position;

abstract public class ASTNode {
    public position pos;
    public Type type;
    public ASTNode(position pos){
        this.pos = pos;
    }

    abstract public void accept(ASTvisitor visitor);

}
