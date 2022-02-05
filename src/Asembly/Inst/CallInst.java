package Asembly.Inst;

import Asembly.AsmModule;
import Asembly.Operand.Operand;
import Asembly.Operand.PhyReg;

import java.util.ArrayList;

public class CallInst extends Inst{
    public String symbol;

    public CallInst(String Symbol){
        symbol = Symbol;
        def.addAll(AsmModule.caller);
        use.removeIf(reg -> reg == AsmModule.regs.get(0));
        //call reserve to be done in Instselector
//        def.add(new PhyReg("ra"));
//        def.add(new PhyReg("t0"));
//        def.add(new PhyReg("t1"));
//        def.add(new PhyReg("t2"));
//        def.add(new PhyReg("t3"));
//        def.add(new PhyReg("t4"));
//        def.add(new PhyReg("t5"));
//        def.add(new PhyReg("t6"));
//        def.add(new PhyReg("a0"));
//        def.add(new PhyReg("a1"));
//        def.add(new PhyReg("a2"));
//        def.add(new PhyReg("a3"));
//        def.add(new PhyReg("a4"));
//        def.add(new PhyReg("a5"));
//        def.add(new PhyReg("a6"));
//        def.add(new PhyReg("a7"));
    }

    @Override
    public String toString(){
        return "\t" + "call" + "\t" + symbol;
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
