package Asembly.Inst;

import Asembly.AsmModule;
import Asembly.Operand.Operand;
import Asembly.Operand.Reg;

import java.util.ArrayList;

public class LoadInst extends Inst{
    public enum LoadType{
        lb,lh,lw,lhu,lbu
    }
    public LoadType Type;
    public Operand rd;
    public Operand imm, rs;
    public String symbol;

    public LoadInst(int ld_byte, Operand rd_, Operand rs_, Operand imm_){
        if(ld_byte == 1){
            Type = LoadType.lb;
        }else if(ld_byte == 2){
            Type = LoadType.lh;
        }else{
            Type = LoadType.lw;
        }

        rd = rd_;
        imm = imm_;
        rs = rs_;
        symbol = null;
        def.add(rd);
        use.add(rs);
        if(imm instanceof Reg)use.add(imm);
    }

    public LoadInst(int ld_byte, Operand rd_, String Symbol){
        if(ld_byte == 1){
            Type = LoadType.lb;
        }else if(ld_byte == 2){
            Type = LoadType.lh;
        }else{
            Type = LoadType.lw;
        }
        rd = rd_;
        imm = null;
        rs = null;
        symbol = Symbol;
        def.add(rd);
    }

    @Override
    public String toString(){
        return "\t" + Type.toString() + "\t" + rd + ", " + ((imm == null) ? symbol : imm + "(" + rs + ")");
    }
    public void change(Operand vir,Operand phy) {
        if (rd == vir) {
            rd = phy;
            def.remove(vir);
            def.add(phy);
        }
        if (rs != null && rs == vir) {
            rs = phy;
            use.remove(vir);
            use.add(phy);
        }
        use.removeIf(reg -> reg == AsmModule.regs.get(0));

    }
    @Override
    public void push_def(ArrayList<Operand> def_) {
        rd = def_.get(0);
    }

    @Override
    public void push_use(ArrayList<Operand> use_) {
        if(symbol == null)rs = use_.get(0);
    }
}
