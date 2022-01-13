package MIR;

public class global_def_stmt extends statement{
    public register global_register;
    public constant initconstant;

    public global_def_stmt(register global_register_){
        global_register = global_register_;
        initconstant = new constant(0,global_register_.type);
    }

    public global_def_stmt(register global_register_, constant initconstant_){
        global_register = global_register_;
        initconstant = initconstant_;
    }

    @Override
    public String toString(){
        return global_register + " = global " + ((ptr_type)global_register.type).irtype + " " + initconstant;
    }
}
