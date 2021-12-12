package MIR;

public class constant extends entity{
    public enum constant_op{
        INT, BOOLi8,BOOLi1
    }

    public constant_op op;
    private int value;

    public constant(int value,constant_op op_){
        super();
        this.value = value;
        op = op_;
    }
    public int value() {
        return value;
    }

    @Override
    public String toString () {
        if(op == constant_op.INT)
            return Integer.toString(value);
        else if(op == constant_op.BOOLi1)
            return value == 1 ? "true" : "false";
        else if(op == constant_op.BOOLi8){
            return Integer.toString(value);
        }
        else return Integer.toString(value);//////
    }
}