package Asembly.Inst;

import Asembly.AsmModule;
import Asembly.Operand.Operand;

import java.util.ArrayList;

public class MvInst extends Inst{
    public Operand rd, rs;
    public MvInst(Operand rd_, Operand rs_){
        rd = rd_;
        rs = rs_;
        def.add(rd);
        use.add(rs);
        use.removeIf(reg -> reg == AsmModule.regs.get(0));
    }

    @Override
    public String toString(){
        return "\t" + "mv" + "\t" + rd + ", " + rs;
    }

    public void change(Operand vir,Operand phy) {
        if (rd == vir) {
            rd = phy;
            def.remove(vir);
            def.add(phy);
        }
        if (rs == vir) {
            rs = phy;
            use.remove(vir);
            use.add(phy);
        }
    }
    @Override
    public void push_def(ArrayList<Operand> def_) {
        rd = def_.get(0);
    }

    @Override
    public void push_use(ArrayList<Operand> use_) {
        rs = use_.get(0);
    }
}
