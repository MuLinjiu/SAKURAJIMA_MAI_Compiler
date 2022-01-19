package MIR;

public class store extends statement{
    public int address;
//    int status;//0 int 1 string_address
//    String address_to;
//    String address_from_s;
    public entity from,to;
    public IRTYPE irtype;
    public store(entity from_, entity to_,IRTYPE irtype_){
        from = from_;
        to = to_;
        irtype = irtype_;
    }

    @Override
    public String toString(){
        return "store " + ((ptr_type)to.type).irtype + " " + from + ", " + to.type + " " + to;
    }

}
