package MIR;

public class Global_register extends entity{
    public String global_reg_name;
    public Global_register(IRTYPE irtype_,String global_reg_name_){
        super(irtype_);
        global_reg_name = global_reg_name_;
    }
    @Override
    public String toString(){
        return "@my_" + global_reg_name;
    }
}
