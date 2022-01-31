package Asembly.Inst;

import Asembly.Operand.Operand;
import MIR.label;

import java.util.ArrayList;

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

    @Override
    public void change(Operand vir,Operand phy) {
        if (rs == vir)
            rs = phy;
        use.remove(vir);
        use.add(phy);
    }

    @Override
    public void push_def(ArrayList<Operand> def_) {
        //
    }

    @Override
    public void push_use(ArrayList<Operand> use_) {
        rs = use_.get(0);
    }

}
