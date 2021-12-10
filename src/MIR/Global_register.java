package MIR;

public class Global_register extends register{
    public String global_reg_name;
    public Global_register(IRTYPE irtype_,String global_reg_name_){
        super(-1,irtype_);
        global_reg_name = global_reg_name_;
    }
    @Override
    public String toString(){
        return "@" + global_reg_name;
    }
}
