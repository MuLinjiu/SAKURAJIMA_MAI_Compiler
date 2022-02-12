package Asembly.Inst;

import Asembly.AsmModule;
import Asembly.Operand.Operand;

import java.util.ArrayList;

public class LiInst extends Inst{
    public Operand rd;
    public Operand imm;

    public LiInst(Operand rd_, Operand imm_){
        rd = rd_;
        imm = imm_;
        def.add(rd);
        //use.removeIf(reg -> reg == AsmModule.regs.get(0));
    }

    @Override
    public String toString(){
        return "\t" + "li" + "\t" + rd + ", " + imm;
    }
    public void change(Operand vir,Operand phy) {
        if (rd == vir) {
            rd = phy;
            def.remove(vir);
            def.add(phy);
        }

    }
    @Override
    public void push_def(ArrayList<Operand> def_) {
        rd = def_.get(0);
    }

    @Override
    public void push_use(ArrayList<Operand> use_) {

    }
}
