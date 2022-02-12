package Asembly.Inst;

import Asembly.AsmModule;
import Asembly.Operand.Operand;
import Asembly.Operand.PhyReg;

import java.util.ArrayList;

public class CallInst extends Inst{
    public String symbol;

    public CallInst(String Symbol){
        symbol = Symbol;
        //def.addAll(AsmModule.caller);
        for(int i = 0 ; i < 32 ;i++){
            if(AsmModule.type_list.get(i) == 0)def.add(AsmModule.regs.get(i));
        }
//        use.removeIf(reg -> reg == AsmModule.regs.get(0));

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
