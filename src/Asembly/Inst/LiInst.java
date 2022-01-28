package Asembly.Inst;

import Asembly.Operand.Operand;

public class LiInst extends Inst{
    public Operand rd;
    public Operand imm;

    public LiInst(Operand rd_, Operand imm_){
        rd = rd_;
        imm = imm_;
        def.add(rd);
    }

    @Override
    public String toString(){
        return "\t" + "li" + "\t" + rd + ", " + imm;
    }
}
