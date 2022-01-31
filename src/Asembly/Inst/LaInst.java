package Asembly.Inst;

import Asembly.Operand.Operand;

import java.util.ArrayList;

public class LaInst extends Inst{
    public Operand rd;
    public String symbol;

    public LaInst(Operand rd_, String Symbol){
        rd = rd_;
        symbol = Symbol;
        def.add(rd);
    }

    @Override
    public String toString(){
        return "\t" + "la" + "\t" + rd + ", " + symbol;
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
