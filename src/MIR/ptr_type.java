package MIR;

public class ptr_type extends IRTYPE{
    public IRTYPE irtype;

    public ptr_type(IRTYPE irtype_){
        super();
        irtype = irtype_;
        this.size = 8;
    }

    @Override
    public String toString(){
        return irtype + "*";
    }
}
