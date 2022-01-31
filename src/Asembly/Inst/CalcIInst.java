package Asembly.Inst;

import Asembly.Operand.Operand;

import java.util.ArrayList;

public class CalcIInst extends Inst{

    public enum IType{
        addi,slti,sltiu,slli,slri,srai,xori,ori,andi
    }

    public IType Type;
    public Operand rd,rs,imm;

    public CalcIInst(IType type_, Operand rd_, Operand rs_, Operand imm_){
        Type = type_;
        rd = rd_;
        rs = rs_;
        imm = imm_;
        use.add(rs);
        def.add(rd);
    }

    @Override
    public String toString(){
        return "\t" + Type.toString() + "\t" + rd + ", " + rs + ", " + imm;
    }

    @Override
    public void change(Operand vir,Operand phy) {
        if (rd == vir) {
            rd = phy;
            def.remove(vir);
            def.add(phy);
        }
        if (rs == vir) {
            rs = phy;
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
        rs = use_.get(0);
    }


}
