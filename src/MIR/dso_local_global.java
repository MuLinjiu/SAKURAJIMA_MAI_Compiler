package MIR;

public class dso_local_global extends statement{
    public Global_register global_register;
    public IRTYPE irtype;
    public int value;


    public dso_local_global(Global_register global_register_, IRTYPE irtype_, int value_){
        global_register = global_register_;
        irtype = irtype_;
        value = value_;
    }

    @Override
    public String toString(){
        return global_register + " = global " + irtype + " " + value;
    }
}
