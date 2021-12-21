package MIR;

import java.util.ArrayList;

public class PHI extends statement{
    public register destreg;
    public IRTYPE irtype;
    public ArrayList<entity> values = new ArrayList<>();
    public ArrayList<label> labels = new ArrayList<>();
    public PHI (register destreg_, IRTYPE irtype_){
       destreg = destreg_;
       irtype = irtype_;
    }

    @Override
    public String toString(){
        String ans = destreg + " = phi " + irtype + " ";
        for (int i = 0; i < values.size() - 1; i++){
            ans = ans + "[ " + values.get(i) + ", " + labels.get(i) + " ], ";
        }
        if (!values.isEmpty()) ans = ans + "[ " + values.get(values.size() - 1) + ", " + labels.get(labels.size() - 1) + " ]";
        return ans;
    }
}
