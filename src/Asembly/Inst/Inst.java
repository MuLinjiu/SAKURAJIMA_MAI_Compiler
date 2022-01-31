package Asembly.Inst;

import Asembly.Operand.Operand;
import Asembly.Operand.Reg;
import Asembly.Operand.VirtReg;

import java.util.ArrayList;
import java.util.HashSet;

public abstract class Inst {
    public Inst pre = null, next = null;

    public HashSet<Operand> use = new HashSet<>();
    public HashSet<Operand> def = new HashSet<>();

    public abstract String toString();
    public abstract void change(Operand vir,Operand phy );
    public abstract void push_def(ArrayList<Operand> def_);
    public abstract void push_use(ArrayList<Operand> use_);
}
