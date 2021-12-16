
package MIR;

import Util.error.internalError;
import Util.position;

import java.util.ArrayList;

public class block {
    public String Identifier;
    public ArrayList<statement> alloca_stmts = new ArrayList<>();//保证alloca在function最先输出,函数参数列表还有store放在这里
    private ArrayList<statement> stmts = new ArrayList<>();

    public enum Flow_Type{
        BREAK,CONTINUE,RETURN
    }
    public Flow_Type flow_type = null;

    public block(String identifier) {
        Identifier = identifier;
    }
    public void push_back(statement s) {
        stmts.add(s);
    }
    public ArrayList<statement> stmts() {
        return new ArrayList<>(stmts);
    }
    // public ArrayList<block> successors() {
    //     ArrayList<block> ret = new ArrayList<>();
    //     if (tailStmt instanceof branch) {
    //         ret.add(((branch) tailStmt).trueBranch);
    //         ret.add(((branch) tailStmt).falseBranch);
    //     }
    //     else if (tailStmt instanceof jump) {
    //         ret.add(((jump) tailStmt).destination);
    //     }
    //     return ret;
    // }

    public void print(boolean printidentifier){
        if(printidentifier)System.out.println("my_" + Identifier + ": ");
        alloca_stmts.forEach(x -> {
            System.out.println(x.toString());
        });
        stmts.forEach(x -> {
            System.out.println(x.toString());
        });
    }
}

