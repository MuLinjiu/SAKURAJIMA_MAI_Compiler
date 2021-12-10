package MIR;

public class trunc extends statement{
    public IRTYPE from_type,to_type;
    public entity from, to;

    public trunc(IRTYPE from_type_, IRTYPE to_type_, entity from_, entity to_){
        from = from_;
        to = to_;
        from_type = from_type_;
        to_type = to_type_;
    }

    @Override
    public String toString(){
        return to + " = trunc " + from_type + " " + from + " " + "to" + " " + to_type;
    }
}
