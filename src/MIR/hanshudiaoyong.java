package MIR;

import java.util.ArrayList;

public class hanshudiaoyong extends statement{
    public String function_name;
    public IRTYPE rettype;
    public boolean void_or_not;
    public register dest_reg;
    public ArrayList<entity> parameters = new ArrayList<>();


    public hanshudiaoyong(){
        super();
        function_name = new String();
    }

    public hanshudiaoyong (String functionname_, IRTYPE rettype_) {
        super () ;
        function_name = functionname_;
        void_or_not = true;
        rettype =  rettype_;
    }
    public hanshudiaoyong (String functionname_, IRTYPE rettype_, register destreg_) {
        super () ;
        function_name = functionname_;
        void_or_not = false;
        rettype =  rettype_;
        dest_reg = destreg_;
    }

    @Override
    public String toString(){
        String str = new String();
        if(void_or_not){
            str = "call void @" + function_name + "(";
        }else {
            str = dest_reg + " = call " + rettype + " @" + function_name + "(";
        }
        for(int i = 0 ; i < parameters.size() - 1; i++) {
            entity curentity = parameters.get(i);
            str = str + curentity.type + " " + curentity + ",";
        }
        if(!parameters.isEmpty()){
            entity e = parameters.get(parameters.size() - 1);
            str = str + e.type + " " + e;
        }
        str = str + ")";
        return str;
    }
}
