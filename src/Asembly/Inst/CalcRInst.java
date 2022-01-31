package Asembly.Inst;

import Asembly.Operand.Operand;

import java.util.ArrayList;

public class CalcRInst extends Inst{

    public enum RType{
        add,sub,sll,slt,sltu,xor,srl,sra,or,and,mul,div,rem
    }

    public RType Type;
    public Operand rs1,rs2,rd;

    public CalcRInst(RType type_, Operand rs1_, Operand rs2_, Operand rd_){
        rs1 = rs1_;
        rs2 = rs2_;
        rd = rd_;
        Type = type_;
        use.add(rs1);
        use.add(rs2);
        def.add(rd);
    }

    @Override
    public String toString(){
        return "\t" + Type.toString() + "\t" + rd + ", " + rs1 +", " + rs2;
    }
    @Override
    public void change(Operand vir,Operand phy) {
        if (rd == vir) {
            rd = phy;
            def.remove(vir);
            def.add(phy);
        }
        if (rs1 == vir) {
            rs1 = phy;
            use.remove(vir);
            use.add(phy);
        }
        if (rs2 == vir) {
            rs2 = phy;
            use.remove(vir);
            use.add(phy);
        }


    }
    @Override
    public void push_def(ArrayList<Operand> def_) {
        rd = def_.get(0);
    }

    @Override
    public void push_use(ArrayList<Operand> use_) {
        rs1 = use_.get(0);
        rs2 = use_.get(1);
    }
}
