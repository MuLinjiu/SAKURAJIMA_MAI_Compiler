package MIR;

public class getelement extends statement{
    public register from,to;
    public constant value;

    public getelement(register from_, register to_, constant value_){
        from = from_;
        to = to_;
        value = value_;
    }
    @Override
    public String toString() {
        return to + " = getelementptr inbounds " + to.type + ", " + from.type + " " + from + ", " + value.type + " " + value;
    }
}
