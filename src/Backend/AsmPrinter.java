package Backend;

import Asembly.AsmFunc;
import Asembly.AsmModule;
import Asembly.Global.Global;

import java.io.PrintStream;

public class AsmPrinter {
    public AsmPrinter(PrintStream outstream, AsmModule topModule){
        outstream.println("\t.text\n");
        for (AsmFunc function : topModule.functions) {
            function.print(outstream) ;
            outstream.println();
        }
        for (Global global : topModule.globalDefine) {
            global.print(outstream) ;
            outstream.println();
        }
    }
}
