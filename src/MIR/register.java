package MIR;

public class register extends entity{
    public int reg_number;//-1 gloabl
    public IRTYPE type;
    public register(int number , IRTYPE type_) {
        super();
        reg_number = number;
        type = type_;
    }

    @Override
    public String toString(){
        return "%" + reg_number;
    }
}