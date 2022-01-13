package MIR;

public class constant extends entity{
    public enum constant_op{
        INT, BOOLi8,BOOLi1
    }

    public constant_op op;
    public int value;

    public constant(int value,constant_op op_,IRTYPE irtype){
        super(irtype);
        this.value = value;
        op = op_;
    }

    public constant(int value,IRTYPE irtype){
        super(irtype);
        this.value = value;
    }

    public constant(constant other){
        super(other.type);
        op = other.op;
        value = other.value;
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