package Asembly.Global;

import java.io.PrintStream;

public class GlobalReg extends Global{
    int size, init_value;
    String identifier;
    public GlobalReg (String identifier_, int init_value_, int size_) {
        identifier = identifier_; init_value = init_value_; size = size_;
    }

    public void print(PrintStream out) {
        out.println("\t.section\t.sbss");
        out.println("\t.type\t" + identifier + ",@object");
        out.println ("\t.globl\t" + identifier) ;
        out.println("\t.p2align\t2");
        out.println(identifier + ":");
        out.println("\t.word\t" + init_value) ;
        out.println("\t.size\t" + identifier + ", " + size) ;
    }
}

