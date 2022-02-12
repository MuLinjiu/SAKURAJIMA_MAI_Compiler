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

    public static ArrayList<Integer> type_list = new ArrayList<>(Arrays.asList(
            2, 0, 2, 2, 2, 0, 0, 0, 2, 1,
            0, 0, 0, 0, 0, 0, 0, 0,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0
    ));
    public ArrayList<AsmFunc>functions = new ArrayList<>();
    public ArrayList<Global> globalDefine = new ArrayList<>();

    public  static ArrayList<PhyReg>regs = new ArrayList<>();
    public static ArrayList<PhyReg> callee = new ArrayList<>(), caller = new ArrayList<>();

    public AsmModule(){
        for (int i = 0; i < 32; i++)
            regs.add(new PhyReg(phyRegName.get(i)));

        for (int i = 9; i <= 9; i++)//s0不能用
            callee.add(regs.get(i));
        for (int i = 18; i <= 27; i++)
            callee.add(regs.get(i));
        for (int i = 5; i <= 7; i++)
            caller.add(regs.get(i));
        for (int i = 10; i <= 17; i++)
            caller.add(regs.get(i));
        for (int i = 28; i <= 31; i++)
            caller.add(regs.get(i));
        caller.add(regs.get(1));
    }

}

