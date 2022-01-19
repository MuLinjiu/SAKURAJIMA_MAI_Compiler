package Asembly.Inst;

public class CallInst extends Inst{
    public String symbol;

    public CallInst(String Symbol){
        symbol = Symbol;

    }

    @Override
    public String toString(){
        return "\t" + "call" + "\t" + symbol;
    }
}
