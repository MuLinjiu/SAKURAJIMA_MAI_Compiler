// package MIR;

// public class binary extends statement{
//     public enum opType{STAR,DIVIDE,MOD,ADD,MINUS,LEFT_SHIFT,RIGHT_SHIFT,GREATER,LESS,GREATER_E,LESS_E,EQUAL,NOT_EQUAL,AND,XOR,OR,AND_AND,OR_OR}

//     public opType op;

//     public binary(register lhs, entity op1, entity op2, opType op) {
//         super();
//         this.lhs = lhs;
//         this.op1 = op1;
//         this.op2 = op2;
//         this.op = op;
//         if (this.op1 instanceof constant) {
//             this.op1 = op2;
//             this.op2 = op1;
//             if (this.op1 instanceof constant) {
//                 int i1 = ((constant) op1).value(), i2 = ((constant) op2).value(), i;
//                 if (op == opType.ADD) i = i1 + i2;
//                 else if (op == opType.MINUS) i = i1 - i2;
//                 else if (op == opType.EQUAL) i = (i1 == i2) ? 1 : 0;
//                 else if (op == opType.NOT_EQUAL)i = (i1 != i2) ? 1 : 0;
//                 this.op2 = new constant(i);
//                 this.op1 = new constant(0);
//             }
//         }
//         // Now, op1 is either register or zero
//     }
// }
package MIR;

public class binary extends statement{
    public enum opType{
        add, // + 1
        sub, // - 1
        mul, // * 1
        sdiv, // / 0
        srem, // % 0
        shl, // << 0
        ashr ,// >> 0
        sgt,// >
        slt,// <
        sge , //>=
        sle,// <=
        eq,// ==
        ne,//!=

        and, // & 0
        or, // | 0
        xor // ^ 0


    }
    public opType operator;
    public IRTYPE irtype;
    public entity rhs, lhs, to;

    public binary(IRTYPE irtype_, entity lhs_, entity rhs_, entity to_, opType operator_){
        irtype = irtype_;
        lhs = lhs_;
        rhs = rhs_;
        to = to_;
        operator = operator_;
    }

    @Override
    public String toString(){
        if(operator == opType.add || operator == opType.sub || operator == opType.mul){
            return to +" = " + operator + " nsw " + irtype + " " + lhs + ", " + rhs;
        }else if(operator == opType.sgt || operator == opType.slt || operator == opType.sge || operator == opType.sle || operator == opType.eq || operator == opType.ne){
            return to + " = icmp " + operator.toString() + " " + irtype + " " + lhs + ", " + rhs;
        }else {
            return to + " = " + operator.toString() + " " + irtype + " " + lhs + ", " + rhs;
        }
    }
}