package MIR;

public class alloca extends statement{
    register reg;
    IRTYPE type;
    public alloca(register reg_, IRTYPE ty){
        reg = reg_;
        type = ty;
    }


    @Override 
    public String toString(){
        return reg + " = alloca" + " " + type;
    }
}
