package Backend;

import MIR.Global_def;
import MIR.block;
import MIR.function;
import MIR.mainFn;

public class IRPrinter {
    public void visitBlock(block curBlock){
        curBlock.print();
    }

    public void visitFn(mainFn fn){
        visitBlock(fn.rootBlock);
    }

    public void visitGlobal_var_def_stmt(Global_def g){
        g.global_def_stmts.forEach(System.out::println);
        System.out.println();
        g.functions.forEach(x ->{
            x.print();
            System.out.println(x.ret_.toString());
        });
    }
}
