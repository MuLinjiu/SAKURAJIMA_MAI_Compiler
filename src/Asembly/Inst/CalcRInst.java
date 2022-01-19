package Asembly.Inst;

import Asembly.Operand.Operand;

public class CalcRInst extends Inst{

    public enum RType{
        add,sub,sll,slt,sltu,xor,srl,sra,or,and,mul,div,rem
    }

    public RType Type;
    public Operand rs1,rs2,rd;

    public CalcRInst(RType type_, Operand rs1_, Operand rs2_, Operand rd_){
        rs1 = rs1_;
        rs2 = rs2_;
        rd = rd_;
        Type = type_;
    }

    @Override
    public String toString(){
        return "\t" + Type.toString() + "\t" + rd + ", " + rs1 +", " + rs2;
    }
}
