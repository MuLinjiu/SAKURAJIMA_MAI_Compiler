package Asembly.Inst;

import Asembly.AsmModule;
import Asembly.Operand.Operand;

import java.util.ArrayList;

public class RetInst extends Inst{
    public RetInst(){
        use.addAll(AsmModule.callee);
        use.removeIf(reg -> reg == AsmModule.regs.get(0));
    }
    @Override
    public String toString(){
        return "\t" + "ret" + "\t";
    }

    @Override
    public void change(Operand vir, Operand phy) {

    }

    @Override
    public void push_def(ArrayList<Operand> def_) {

    }

    @Override
    public void push_use(ArrayList<Operand> use_) {

    }
}
