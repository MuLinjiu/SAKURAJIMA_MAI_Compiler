package Asembly.Inst;

public abstract class Inst {
    public Inst pre = null, next = null;

    public abstract String toString();
}
