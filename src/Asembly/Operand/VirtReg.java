package Asembly.Operand;

public class VirtReg extends Reg{
    public int size;
    public VirtReg(String identifier_, int size_){
        super(identifier_);
        size = size_;
    }
    public VirtReg (int id, int size_) {
        super ("VirtReg_" + id) ;
        size = size_ ;
    }

    @Override
    public String toString(){
        return identifier;
    }
}
