package Asembly.Inst;

import Asembly.Operand.Operand;
import Asembly.Operand.Reg;

import java.util.ArrayList;
import java.util.HashSet;

public abstract class Inst {
    public Inst pre = null, next = null;

    public HashSet<Operand> use = new HashSet<>();
    public HashSet<Operand> def = new HashSet<>();

    public abstract String toString();
}
