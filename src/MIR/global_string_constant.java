package MIR;

public class global_string_constant extends statement{
    public register reg;
    public static int stringId = 0;
    public String string_constant;

    public global_string_constant(String str){


        reg = new register(".str." + (stringId++),new ptr_type(new arrptr_type(str.length(),new INT_TYPE(8))),true);
        string_constant = str.replace("\\","\\5C").replace("\n","\\0A").replace("\"","\\22").replace("\0","\\00");
    }

    @Override
    public String toString(){
        return reg + " = private constant " + ((ptr_type)reg.type).irtype + " c\"" + string_constant + "\"";
    }
}
