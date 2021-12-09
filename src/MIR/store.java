package MIR;

public class store extends statement{
    int address;
//    int status;//0 int 1 string_address
//    String address_to;
//    String address_from_s;
    entity from,to;
    IRTYPE irtype;
    public store(entity from_, entity to_,IRTYPE irtype_){
        from = from_;
        to = to_;
        irtype = irtype_;
    }

    @Override
    public String toString(){
        return "store " + irtype + " " + from + ", " + irtype + "* " + to;
    }

}
