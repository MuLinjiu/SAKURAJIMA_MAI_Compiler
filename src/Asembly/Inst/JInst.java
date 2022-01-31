package Asembly.Inst;

import Asembly.Operand.Operand;
import MIR.label;

import java.util.ArrayList;

public class JInst extends Inst{
    public label to_label;
    public JInst(label to_label_){
        to_label = to_label_;

    }

    @Override
    public String toString(){
        return "\t" + "j" + "\t." + to_label.label_name;
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
