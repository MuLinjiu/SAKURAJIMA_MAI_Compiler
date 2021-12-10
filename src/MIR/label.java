package MIR;

public class label extends entity{
    public int label_id;

    public label(int label_id_){
        super();
        label_id = label_id_;
    }

    @Override
    public String toString(){
        return "%" + label_id;
    }
}
