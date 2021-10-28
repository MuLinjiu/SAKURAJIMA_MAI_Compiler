package Util;

import java.util.HashMap;

public class Type {
    public enum Type_kind{INT, BOOL, STRING,VOID, CLASS, FUNC, THIS, NULL}

    public boolean isInt = false, isBool = false;
    public HashMap<String, Type> members = null;
}
