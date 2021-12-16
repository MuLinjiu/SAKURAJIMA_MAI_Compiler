package MIR;

public class ptr_type extends IRTYPE{
    public IRTYPE irtype;

    public ptr_type(IRTYPE irtype_){
        super();
        irtype = irtype_;
    }

    @Override
    public String toString(){
        return irtype + "*";
    }
}
