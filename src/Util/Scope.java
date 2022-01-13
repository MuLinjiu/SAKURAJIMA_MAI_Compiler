package Util;

import MIR.*;
import MIR.register;
import Util.error.semanticError;

import java.util.HashMap;

public class Scope {
    private HashMap<String, Type> members;
    public HashMap<String, entity> entities = new HashMap<>();
    private Scope parentScope;
    public int num = 0;
    public HashMap<String, Integer>member_id = new HashMap<>();//class 中 成员在第几个顺序位置
//
//
    public HashMap<String,Integer> Identifier_to_reg = new HashMap<>();

    public void add_ID_REG(String identifier,Integer reg){
        Identifier_to_reg.put(identifier,reg);
    }

    public Scope() {
        members = new HashMap<>();
        this.parentScope = null;
    }
    public Scope(Scope parentScope) {
        members = new HashMap<>();
        this.parentScope = parentScope;
    }

    public Scope parentScope() {
        return parentScope;
    }

    public void addVariable(position pos, String name, Type type){
        if (members.containsKey(name))
            throw new semanticError("Semantic Error : redefined variable " + name, pos);
        else {
            members.put(name, type);
            member_id.put(name,num++);
        }
    }


//    public void defineVariable(String name, Type t, position pos) {
//        if (members.containsKey(name))
//            throw new semanticError("Semantic Error: variable redefine", pos);
//        members.put(name, t);
//    }
//
    public Scope containsKey(String name, boolean lookUpon) {
        if (members.containsKey(name)) return this;
        else if (parentScope != null && lookUpon)
            return parentScope.containsKey(name, true);
        else return null;
    }
    public Type getType(position pos, String name, boolean lookUpon) {
        if (members.containsKey(name)) return members.get(name);
        else if (parentScope != null && lookUpon)
            return parentScope.getType(pos, name, true);
        else throw new semanticError("Semantic Error : cannot find the identifier : " + name , pos);
    }



    public entity getEntity(String name, boolean lookUpon) {
        if (entities.containsKey(name)) return entities.get(name);
        else if (parentScope != null && lookUpon)
            return parentScope.getEntity(name, true);
        return null;
    }
}
