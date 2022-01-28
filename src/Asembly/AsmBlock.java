package Asembly;

import Asembly.Inst.Inst;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;

public class AsmBlock {
    public Inst head,tail;
    public String label;
    public HashMap<AsmBlock, Inst>pre_inst = new HashMap<>();

    public ArrayList<AsmBlock> succ = new ArrayList<>();

    public AsmBlock(String label_){
        head = null;
        tail = null;
        label = label_;
    }

    public void insert_before(Inst pos, Inst x){//pos前插入x
        if (pos.pre == null) head = x;
        else pos.pre.next = x;
        x.pre = pos.pre;
        x.next = pos;
        pos.pre = x;
    }

    public void insert_after(Inst pos, Inst x){//pos后插入x
        if (pos.next == null) tail = x;
        else pos.next.pre = x;
        x.next = pos.next;
        x.pre = pos;
        pos.next = x;
    }

    public void push_back(Inst x){
        if (head == null) head = tail = x;
        else insert_after(tail, x);
    }
    public void print (PrintStream out) {
        out.println("." + label + ":");
        for (Inst inst = head; inst != null; inst = inst.next){
            out.println ("\t" + inst);
        }
    }

}
