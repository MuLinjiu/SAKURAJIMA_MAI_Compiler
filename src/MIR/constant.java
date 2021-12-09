package MIR;

public class constant extends entity{
    private int value;
    public constant(int value) {
        super();
        this.value = value;
    }
    public int value() {
        return value;
    }

    @Override
    public String toString () {
        return Integer.toString(value) ;
    }
}