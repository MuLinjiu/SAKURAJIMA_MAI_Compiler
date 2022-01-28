package Asembly.Inst;

import Asembly.Operand.Operand;
import MIR.label;

public class BranchInst extends Inst{
    public enum BrType{
        bnez,beqz,bltz,bgtz,gbez,blez
    }

    public BrType Type;
    public Operand rs;
    public label to_label;

    public BranchInst(BrType type, Operand rs_, label to_label_){
        Type = type;
        rs = rs_;
        to_label = to_label_;
        use.add(rs);
    }

    @Override
    public String toString(){
        return "\t" + Type.toString() + "\t" + rs + ", ." + to_label.label_name;
    }

}
