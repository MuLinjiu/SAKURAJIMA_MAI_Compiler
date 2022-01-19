package Asembly.Inst;

import MIR.label;

public class JInst extends Inst{
    public label to_label;
    public JInst(label to_label_){
        to_label = to_label_;

    }

    @Override
    public String toString(){
        return "\t" + "j" + "\t." + to_label.label_name;
    }
}
