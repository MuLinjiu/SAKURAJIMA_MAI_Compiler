package Asembly.Inst;

import Asembly.Operand.Operand;
import Asembly.Operand.Reg;

public class StoreInst extends Inst{
    public enum StoreType{
        sw,sb,sh
    }

    public StoreType Type;
    public String symbol;
    public Operand rt;
    public Operand rd;//rd=rs1, rt = rs2
    public Operand rs, imm;


    public StoreInst(int st_byte, Operand rd_, String Symbol,Operand rt_){
        if(st_byte == 1){
            Type = StoreType.sb;
        }else if(st_byte == 2){
            Type = StoreType.sh;
        }else Type = StoreType.sw;
        rd = rd_;
        symbol = Symbol;
        rt = rt_;
        use.add(rd);
        use.add(rt);
        //String don't know
        imm = null;
        rs = null;
    }

    public StoreInst(int st_byte, Operand rd_, Operand rs_, Operand imm_){
        if(st_byte == 1){
            Type = StoreType.sb;
        }else if(st_byte == 2){
            Type = StoreType.sh;
        }else Type = StoreType.sw;
        rd = rd_;
        rs = rs_;
        imm = imm_;
        use.add(rd);
        use.add(rs);
        if(imm instanceof Reg)use.add(imm);
        symbol = null;
        rt = null;
    }

    @Override
    public String toString(){
        return "\t" + Type.toString() + "\t" + rd + ", " + ((imm == null) ? symbol + ", " + rt : imm + "(" + rs + ")");

    }
}
