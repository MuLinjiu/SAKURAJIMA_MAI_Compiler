package Asembly.Operand;

public class Imm extends Operand{
    public int value;

    public Imm(int value_){
        value = value_;
    }

    @Override
    public String toString(){
        return Integer.toString(value);
    }
}
