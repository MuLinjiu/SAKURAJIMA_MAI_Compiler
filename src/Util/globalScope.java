package Util;

import Util.error.semanticError;

import java.util.ArrayList;
import java.util.HashMap;

public class globalScope extends Scope {
    public String scopename;
    private HashMap<String, Scope>fucscope = new HashMap<>();
    private HashMap<String, globalScope>classscope = new HashMap<>();
    private HashMap<String, Type> fucretType = new HashMap<>();
    private HashMap<String, ArrayList<Type>>fucParameters = new HashMap<>();

    public globalScope(){
        scopename = "Global";
    }

    public globalScope(Scope scope, String name){
        super(scope);
        scopename = name;
    }

    public void addclass(position pos, String name, globalScope scope){
        if(classscope.containsKey(name)){
            throw new semanticError("Semantic Error : redefined class" + name, pos);
        }else if(fucscope.containsKey(name)){
            throw new semanticError("Semantic Error : class name : " + name + "already been defined as function", pos);
        }else if(super.containsKey(name,false) != null){
            throw new semanticError("Semantic Error : class name : " + name + "already been defined as variable", pos);
        }else classscope.put(name, scope);
    }

    public void addfunc(position pos, String name, Scope scope, Type retType, ArrayList<Type> parameterlist){
        if(fucscope.containsKey(name)){
            throw new semanticError("Semantic Error : redefined function" + name, pos);
        }else if(classscope.containsKey(name)){
            throw new semanticError("Semantic Error : function name : " + name + "already been defined as class", pos);
        }else {
            fucscope.put(name, scope);
            fucretType.put(name, retType);
            fucParameters.put(name, parameterlist);
        }
    }

    public Scope getscopefromfuc(position pos, String name){
        if(fucscope.containsKey(name)){
            return fucscope.get(name);
        }else if(this.parentScope() != null){
            return ((globalScope)this.parentScope()).getscopefromfuc(pos, name);
        }else throw new semanticError("Semantic Error : cannot find the function : " + name, pos);
    }

    public Scope getscopefromclass(position pos, String name){
        if(classscope.containsKey(name)){
            return classscope.get(name);
        }else if(this.parentScope() != null)return ((globalScope)this.parentScope()).getscopefromclass(pos, name);
        else throw new semanticError("Semantic Error : cannot find the class : " + name, pos);
    }


    public Type getretTypefromfuc(position pos, String name){
        if(fucretType.containsKey(name)){
            return fucretType.get(name);
        }else if(this.parentScope() != null){
            return ((globalScope)this.parentScope()).getretTypefromfuc(pos,name);
        }else throw new semanticError("Semantic Error : cannot find the function : " + name, pos);
    }

    public ArrayList<Type> getparameterlistfromfuc(position pos, String name){
        if(fucParameters.containsKey(name)){
            return fucParameters.get(name);
        }else if(this.parentScope() != null){
            return ((globalScope)this.parentScope()).getparameterlistfromfuc(pos, name);
        }else throw new semanticError("Semantic Error : cannot find the function : " + name, pos);
    }


    public boolean findclass(String name){
        if(classscope.containsKey(name))return true;
        else if(this.parentScope() != null){
            return ((globalScope)this.parentScope()).findclass(name);
        }else return false;
    }


    public boolean findfunc(String name, boolean lookup){
        if(fucscope.containsKey(name))return true;
        else if(lookup && this.parentScope() != null){
            return ((globalScope)this.parentScope()).findfunc(name, true);
        }else return false;
    }

    @Override
    public Scope containsKey(String name, boolean lookUpon){
        if(fucscope.containsKey(name))return this;
        else return super.containsKey(name,lookUpon);
    }


}
