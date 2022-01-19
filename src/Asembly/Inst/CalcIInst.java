package Asembly.Inst;

import Asembly.Operand.Operand;

public class CalcIInst extends Inst{

    public enum IType{
        addi,slti,sltiu,slli,slri,srai,xori,ori,andi
    }

    public IType Type;
    public Operand rd,rs,imm;

    public CalcIInst(IType type_, Operand rd_, Operand rs_, Operand imm_){
        Type = type_;
        rd = rd_;
        rs = rs_;
        imm = imm_;
    }

    @Override
    public String toString(){
        return "\t" + Type.toString() + "\t" + rd + ", " + rs + ", " + imm;
    }


}
