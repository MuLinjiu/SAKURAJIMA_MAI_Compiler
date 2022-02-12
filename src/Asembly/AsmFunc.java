package Asembly;

import Asembly.Operand.Reg;
import Asembly.Operand.VirtReg;
import MIR.*;
import java.io.PrintStream;
import java.security.PublicKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;


public class AsmFunc {
    public String func_name;
    public int func_call_offset,offset, cur_reg_id;
    public ArrayList<AsmBlock>asmblocks = new ArrayList<>();
    public HashMap<String, VirtReg> toreg_map = new HashMap<>();
    public HashMap<Reg, Integer> reg_offset = new HashMap<>();
    public HashMap<String, VirtReg>phird = new HashMap<>();
    public HashMap<String, entity>phivalue = new HashMap<>();
    public HashSet<String> allocaregs = new HashSet<>();
    public ArrayList<VirtReg>callees = new ArrayList<>();

    public AsmFunc(String identifier_){
        func_name = identifier_;
        offset = 0;
        func_call_offset = 0;
        cur_reg_id = 0;
    }
    public void print(PrintStream out) {
        out.println("\t.globl\t" + func_name);
        out.println("\t.p2align\t2");
        out.println("\t.type\t" + func_name + ",@function") ;
        out.println(func_name + ":") ;
        for (AsmBlock block : asmblocks) {
            block.print (out) ;
        }
    }

}
