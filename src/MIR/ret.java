package MIR;

public class ret extends statement{
    public entity reg;
    public IRTYPE irtype;

    public ret(entity reg_,IRTYPE irtype_){
        reg = reg_;
        irtype = irtype_;
    }
    public ret(){
        reg = null;
    }

    @Override public String toString(){
        if(irtype != null)return "ret " + irtype + " " + reg;
        else return "ret void";
    }
}