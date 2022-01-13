package MIR;

public class class_define_stmt extends statement{
    public CLASS class_type;
    public class_define_stmt(CLASS class_type_){
        class_type = class_type_;
    }

    @Override
    public String toString(){
        String ans = class_type + " = type { ";
        for(int i = 0 ; i < class_type.class_irtypes.size() - 1; i++){
            IRTYPE irtype = class_type.class_irtypes.get(i);
            ans = ans + irtype + ", ";
        }
        if(!class_type.class_irtypes.isEmpty()){
            IRTYPE irtype = class_type.class_irtypes.get(class_type.class_irtypes.size() - 1);
            ans = ans + irtype;
        }
        ans = ans + " }";
        return ans;
    }
}
