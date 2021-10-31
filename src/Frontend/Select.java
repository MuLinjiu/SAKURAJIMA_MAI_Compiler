package Frontend;

import AST.BinaryExprNode;

public class Select {
    public Select(){}

    public boolean comparesign(BinaryExprNode.binarysign op){
        return op == BinaryExprNode.binarysign.LESS || op == BinaryExprNode.binarysign.GREATER || op == BinaryExprNode.binarysign.EQUAL || op == BinaryExprNode.binarysign.NOT_EQUAL || op == BinaryExprNode.binarysign.LESS_E || op == BinaryExprNode.binarysign.GREATER_E;
    }

    public boolean yunsuansign(BinaryExprNode.binarysign op){
        return op == BinaryExprNode.binarysign.OR || op == BinaryExprNode.binarysign.XOR || op == BinaryExprNode.binarysign.AND || op == BinaryExprNode.binarysign.RIGHT_SHIFT || op == BinaryExprNode.binarysign.LEFT_SHIFT || op == BinaryExprNode.binarysign.MINUS
                || op == BinaryExprNode.binarysign.ADD || op == BinaryExprNode.binarysign.MOD || op == BinaryExprNode.binarysign.DIVIDE || op == BinaryExprNode.binarysign.STAR;
    }
    public boolean logicsign(BinaryExprNode.binarysign op){
        return op == BinaryExprNode.binarysign.AND_AND || op == BinaryExprNode.binarysign.OR_OR;
    }
}
