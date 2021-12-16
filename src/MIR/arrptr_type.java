package MIR;

public class arrptr_type extends IRTYPE{

    public int size;
    public IRTYPE irtype;

    public arrptr_type(int size_, IRTYPE irtype_){
        size = size_;
        irtype = irtype_;
    }

    @Override
    public String toString(){
        return "[" + size + " x " + irtype +"]";
    }
}
