package Asembly.Inst;

import Asembly.Operand.Operand;

public class MvInst extends Inst{
    public Operand rd, rs;
    public MvInst(Operand rd_, Operand rs_){
        rd = rd_;
        rs = rs_;
    }

    @Override
    public String toString(){
        return "\t" + "mv" + "\t" + rd + ", " + rs;
    }
}
