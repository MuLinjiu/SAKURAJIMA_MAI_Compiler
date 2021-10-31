package Frontend;

import Util.*;
import Util.error.semanticError;

import java.util.Objects;

public class Lambada_Returnchecker {
    public String fucname;
    public boolean return_or_not;
    public Type retType;

    Lambada_Returnchecker(String s){
        fucname = s;
        return_or_not = false;
    }

    public void special_judge(position pos, globalScope gscope, Type rettype){
        Type fucrettype;
        if(Objects.equals(fucname, "Lambda")){
            if(retType == null){
                retType = new Type(rettype);
                retType.value = true;
            }
            fucrettype = retType;
        }else fucrettype = gscope.getretTypefromfuc(pos, fucname);
        if(fucrettype.Type_name == Type.Type_kind.VOID){
            if(rettype.Type_name != Type.Type_kind.VOID){
                throw new semanticError("cao",pos);
            }
        }else fucrettype.assigncheck(pos,gscope,rettype);
        return_or_not = true;
    }
}
