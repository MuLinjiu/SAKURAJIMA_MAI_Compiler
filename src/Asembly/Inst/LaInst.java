package Asembly.Inst;

import Asembly.Operand.Operand;

public class LaInst extends Inst{
    public Operand rd;
    public String symbol;

    public LaInst(Operand rd_, String Symbol){
        rd = rd_;
        symbol = Symbol;
    }

    @Override
    public String toString(){
        return "\t" + "la" + "\t" + rd + " " + symbol;
    }
}
