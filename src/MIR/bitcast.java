package MIR;

public class bitcast extends statement{
    public register from, to;
    public IRTYPE irtype;

    public bitcast(register from_, register to_, IRTYPE irtype_){
        from = from_;
        to = to_;
        irtype = irtype_;
    }

    @Override
    public String toString () {
        return to + " = bitcast " + from.type + " " + from + " to " + irtype;
    }
}
