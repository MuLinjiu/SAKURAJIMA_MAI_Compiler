package Asembly.Global;

import java.io.PrintStream;

public class GlobalStringConstant extends Global{
    String identifier, init_str;
    int size;

    public GlobalStringConstant(String identifier_, String init_str_){
        identifier = identifier_;
        init_str = init_str_.replace("\\5C", "\\\\").replace("\\0A", "\\n").replace("\\22", "\\\"").replace("\\00", "\0");
        size =init_str.length();
    }

    public void print(PrintStream out) {
        out.println("\t.section\t.rodata");
        out.println("\t.type\t" + identifier + ",@object");
        out.println(identifier + ":");
        out.println("\t.asciz\t\"" + init_str + "\"") ;
        out.println("\t.size\t" + identifier + ", " + size) ;
    }
}
