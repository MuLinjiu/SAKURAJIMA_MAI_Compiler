package Asembly.Inst;

import Asembly.Operand.Operand;

public class LoadInst extends Inst{
    public enum LoadType{
        lb,lh,lw,lhu,lbu
    }
    public LoadType Type;
    public Operand rd;
    public Operand imm, rs;
    public String symbol;

    public LoadInst(int ld_byte, Operand rd_, Operand rs_, Operand imm_){
        if(ld_byte == 1){
            Type = LoadType.lb;
        }else if(ld_byte == 2){
            Type = LoadType.lh;
        }else{
            Type = LoadType.lw;
        }

        rd = rd_;
        imm = imm_;
        rs = rs_;
        symbol = null;
    }

    public LoadInst(int ld_byte, Operand rd_, String Symbol){
        if(ld_byte == 1){
            Type = LoadType.lb;
        }else if(ld_byte == 2){
            Type = LoadType.lh;
        }else{
            Type = LoadType.lw;
        }
        rd = rd_;
        imm = null;
        rs = null;
        symbol = Symbol;
    }

    @Override
    public String toString(){
        return "\t" + Type.toString() + "\t" + rd + ", " + ((imm == null) ? symbol : imm + "(" + rs + ")");
    }
}
