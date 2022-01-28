package Asembly.Inst;

import Asembly.Operand.Operand;

public class CmpInst extends Inst{

    public enum CmpType{
        seqz,snez,sltz,sgtz
    }

    public CmpType Type;
    public Operand rd, rs;

    public CmpInst(CmpType type, Operand rd_, Operand rs_){
        rd = rd_;
        rs = rs_;
        Type = type;
        use.add(rs);
        def.add(rd);
    }

    @Override
    public String toString(){
        return "\t" + Type.toString() + "\t" + rd + ", " + rs;

    }
}
