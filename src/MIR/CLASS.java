package MIR;

import java.util.ArrayList;

public class CLASS extends IRTYPE{
    public String class_name;
    public ArrayList<IRTYPE>class_irtypes = new ArrayList<>();
    public CLASS(String calss_name_){
        class_name = calss_name_;
    }

    @Override
    public String toString(){
        return "%class." + class_name;
    }
}
