package MIR;

public class INT_TYPE extends IRTYPE{
    public int width = 0;
    public INT_TYPE(int width_){//bool = int 8
        super();
        width = width_;
        this.size = width_ / 8;
    }

    @Override
    public String toString(){
        return "i" + width;
    }

}
