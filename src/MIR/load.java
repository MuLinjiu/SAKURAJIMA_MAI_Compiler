package MIR;

public class load extends statement{
    public IRTYPE type;
    //public int address;
    public entity from,to;
//    public load(int reg,IRTYPE type_, int address_){
//        reg_add = reg;
//        type = type_;
//        address = address_;
//    }
    public load(IRTYPE type_,entity from_, entity to_){
//        reg_add = reg;
        type = type_;
        from = from_;
        to = to_;
    }

    @Override
    public String toString(){
        return to + " = load " + to.type + ", " + from.type + " " + from;
    }

}
