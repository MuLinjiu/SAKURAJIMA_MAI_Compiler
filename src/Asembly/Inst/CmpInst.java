package Asembly.Inst;

import Asembly.AsmModule;
import Asembly.Operand.Operand;

import java.util.ArrayList;

public class CmpInst extends Inst{

    public enum CmpType{
        seqz,snez,sltz,sgtz
    }

    public CmpType Type;
    public Operand rd, rs;

    public CmpInst(CmpType type, Operand rd_, Operand rs_){
        rd = rd_;
        rs = rs_;
        Type = type;
        use.add(rs);
        def.add(rd);
        use.removeIf(reg -> reg == AsmModule.regs.get(0));
    }

    @Override
    public String toString(){
        return "\t" + Type.toString() + "\t" + rd + ", " + rs;

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
