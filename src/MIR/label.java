package MIR;

public class label{
    public int label_id;
    public String label_name;//&& ||
    public label(int label_id_){
        //super();
        label_id = label_id_;
    }

    public label(String label_name_ ){
        label_name = label_name_;
    }


    @Override
    public String toString(){
        if(label_name == null)return "%my_" + label_id;
        else return "%my_" + label_name;
    }
}
