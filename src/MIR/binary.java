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
