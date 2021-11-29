package MIR;

public class alloca extends statement{
    int Identifier;
    IRTYPE type;
    public alloca(int identifier, IRTYPE ty){
        Identifier = identifier;
        type = ty;
    }


    @Override 
    public String toString(){
        return "%" + Identifier + " = alloca" + " " + type;
    }
}
