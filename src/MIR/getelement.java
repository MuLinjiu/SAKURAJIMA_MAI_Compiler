package MIR;

import java.util.ArrayList;

public class getelement extends statement{
    public register from,to;
    public ArrayList<entity> values = new ArrayList<>();

    public getelement(register from_, register to_){
        from = from_;
        to = to_;
    }
    @Override
    public String toString() {
//        IRTYPE irtype = ((ptr_type)from.type).irtype;
//        while(irtype instanceof ptr_type ){
//            irtype = ((ptr_type) irtype).irtype;
//        }
        String res = to + " = getelementptr inbounds " + ((ptr_type)from.type).irtype + ", " + from.type + " " + from + ", ";
        for (int i = 0; i < values.size() - 1; i++)
            res = res + values.get(i).type + " " + values.get(i) + ", ";
        res = res + values.get(values.size() - 1).type + " " + values.get (values.size() - 1);
        return res ;    }
}
