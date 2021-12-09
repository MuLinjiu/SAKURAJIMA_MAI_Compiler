package MIR;

public class register extends entity{
    private int reg_number;
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
