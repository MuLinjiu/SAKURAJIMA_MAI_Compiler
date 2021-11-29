
package MIR;

import Util.error.internalError;
import Util.position;

import java.util.ArrayList;

public class block {
    private String Identifier;
    private ArrayList<statement> stmts = new ArrayList<>();
    public block(String identifier) {
        Identifier = identifier;
    }
    public void push_back(alloca alloca) {
        stmts.add(alloca);
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

    public void print(){
        System.out.println(Identifier);
        stmts.forEach(x -> {
            System.out.println(x.toString());
        });
    }
}

