package Asembly;

import Asembly.Global.Global;
import Asembly.Operand.PhyReg;

import java.util.ArrayList;
import java.util.Arrays;

public class AsmModule {
    public static ArrayList<String> phyRegName = new ArrayList<>(Arrays.asList(
            "zero", "ra", "sp", "gp", "tp", "t0", "t1", "t2", "s0", "s1",
            "a0", "a1", "a2", "a3", "a4", "a5", "a6", "a7",
            "s2", "s3", "s4", "s5", "s6", "s7", "s8", "s9", "s10", "s11", "t3", "t4", "t5", "t6"));
    public ArrayList<AsmFunc>functions = new ArrayList<>();
    public ArrayList<Global> globalDefine = new ArrayList<>();

    public ArrayList<PhyReg>regs = new ArrayList<>();

    public AsmModule(){
        for (int i = 0; i < 32; ++i)
            regs.add(new PhyReg(phyRegName.get(i)));
    }

}

