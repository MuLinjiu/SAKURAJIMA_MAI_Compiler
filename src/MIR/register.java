package MIR;

public class register extends entity{
    public String reg_number;//-1 gloabl
    public boolean isglobal;
    //public IRTYPE type;
    public register(int number , IRTYPE type_) {
        super(type_);
        reg_number = new String("my_" + number);
        isglobal = false;
        //type = type_;
    }
    public register(String number , IRTYPE type_,boolean isglobal_) {
        super(type_);
        reg_number = new String("my_" + number);
        isglobal = isglobal_;
        //type = type_;
    }

    @Override
    public String toString(){
        if(this.type instanceof NULL_PTR)return "null";
        else{
            if(!isglobal)return "%" + reg_number;
            else return "@" + reg_number;
        }
    }
}
