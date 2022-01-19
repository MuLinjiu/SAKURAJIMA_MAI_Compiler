package Asembly.Operand;

public class PhyReg extends Reg{
    public PhyReg(String idefntifier_){
        super(idefntifier_);
    }
    @Override
    public String toString(){
        return identifier;
    }
}
