package MIR;

public class branch extends statement{
    public label true_label, false_label;
    public entity condition;//i1
    public boolean direct_jump;

    public branch(label true_label_,label false_label_, entity condition_){
        true_label = true_label_;
        false_label = false_label_;
        condition = condition_;
        direct_jump = false;
    }

    public branch(label true_label_){
        true_label = true_label_;
        direct_jump = true;
    }

    @Override
    public String toString(){
        if(direct_jump){
            return "br label " + true_label;
        }else{
            return "br i1 " + condition + ", label " + true_label + ", label " + false_label;
        }

    }
}
