package MIR;

public class label{
    public int label_id;

    public label(int label_id_){
        //super();
        label_id = label_id_;
    }

    @Override
    public String toString(){
        return "%my_" + label_id;
    }
}
