package MIR;

public class global_def_stmt extends statement{
    public Global_register global_register;
    public constant initconstant;

    public global_def_stmt(Global_register global_register_){
        global_register = global_register_;
        initconstant = new constant(0,global_register_.type);
    }

    public global_def_stmt(Global_register global_register_, constant initconstant_){
        global_register = global_register_;
        initconstant = initconstant_;
    }

    @Override
    public String toString(){
        return global_register + " = global" + global_register.type + " " + initconstant;
    }
}
