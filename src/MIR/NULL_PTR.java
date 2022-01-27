package MIR;

public class NULL_PTR extends IRTYPE{
    public IRTYPE totype;
    public NULL_PTR(){
        super();
    }

    @Override
    public String toString() {
        return totype.toString() ;
    }
}
