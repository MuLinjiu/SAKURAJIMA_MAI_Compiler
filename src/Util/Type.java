package Util;

import Util.error.semanticError;

import java.util.ArrayList;
import java.util.Objects;

public class Type {
    public enum Type_kind{INT, BOOL, STRING, VOID, CLASS, FUNC, THIS, NULL,Identifier}
    public Type_kind Type_name;
    public boolean value;
    public int dims;
    public String name;//函数或类时存放名字
    public Type fucretType;
    public ArrayList<Type> fucparameters;


    public Type(Type_kind type_kind, int dim_, boolean value_){
        Type_name = type_kind;
        dims = dim_;
        value = value_;
        name = null;
    }
    public Type(Type_kind type_kind, int dim_, boolean value_,String contex){//identifier
        Type_name = type_kind;
        dims = dim_;
        value = value_;
        name = contex;
    }

    public Type(String name_, int dim_, boolean value_){
        Type_name = Type_kind.CLASS;
        dims = dim_;
        value = value_;
        name = name_;
    }

    public Type(String name_, Type retType, ArrayList<Type> parameters){
        Type_name = Type_kind.FUNC;
        name = name_;
        value = false;
        dims = 0;
        fucretType = retType;
        fucparameters = parameters;

    }

    public Type(Type other){
        Type_name = other.Type_name;
        value = other.value;
        dims = other.dims;
        name = other.name;
        fucretType = (other.fucretType == null) ? null : new Type(other.fucretType);
        fucparameters = (other.fucparameters == null) ? null : new ArrayList<>(other.fucparameters);
    }

    public boolean yinyong(){
        if(this.Type_name == Type_kind.CLASS || this.Type_name == Type_kind.STRING || this.Type_name == Type_kind.THIS || dims > 0)return true;
        else return false;
    }

    public void typeMatcher(position pos, Type other){
        if (this.Type_name != other.Type_name)
            throw new semanticError("ype differ", pos);
        if (this.Type_name == Type.Type_kind.CLASS) {
            if (other.name == null || !other.name.equals(this.name))
                throw new semanticError("class name diferr", pos);
        }
        if (this.dims != other.dims)
            throw new semanticError("dims differ", pos);
    }

    public void assigncheck(position pos, globalScope globalscope, Type rtype){
        if(!this.value){
            throw new semanticError("cannot assign",pos);
        }
        if(rtype.Type_name == Type_kind.THIS){
            if(this.Type_name != Type_kind.CLASS)throw new semanticError("cannot assign this to no-class",pos);
            if(!Objects.equals(globalscope.scopename, this.name))throw new semanticError("name not same",pos);
        }else if(rtype.Type_name == Type_kind.NULL){
            if(!this.yinyong() || this.Type_name == Type_kind.STRING && dims == 0){
                throw new semanticError("cannot assign null",pos);
            }
        }
        else {
            if(this.Type_name != rtype.Type_name){
                throw new semanticError("type differ",pos);
            }
            if(this.Type_name == Type_kind.CLASS){
                if(rtype.name == null || !Objects.equals(rtype.name, this.name))throw new semanticError("class name diferr",pos);
            }
            if(this.dims != rtype.dims)throw new semanticError("dims differ",pos);
        }
    }


}
