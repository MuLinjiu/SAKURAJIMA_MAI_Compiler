package MIR;

public class arrptr_type extends IRTYPE{

    public int arraysize;
    public IRTYPE irtype;

    public arrptr_type(int size_, IRTYPE irtype_){
        arraysize = size_;
        this.size = size_ * irtype_.size;
        irtype = irtype_;
    }

    @Override
    public String toString(){
        return "[" + arraysize + " x " + irtype +"]";
    }
}
