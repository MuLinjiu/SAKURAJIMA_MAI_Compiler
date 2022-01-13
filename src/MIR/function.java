package MIR;

import java.util.ArrayList;
import java.util.Objects;

public class function {
    public String identifier;
    //public ArrayList<statement> alloca_block = new ArrayList<>();
    public block rootblock;
    public ArrayList<block>blocks = new ArrayList<>();
    public int register_id;
    public ret ret_;
    public IRTYPE returntype;//buitlin yong
    public ArrayList<register>parameter_list = new ArrayList<>();
    public ArrayList<String> parameterid = new ArrayList<>();
    public boolean isbuiltin;
    public function(String name){
        identifier = name;
        rootblock = new block(name);
        //alloca_block = new block(name)
        //blocks.add(rootblock);
        register_id = 1;
    }

    public function(){
        identifier = "Global";
        rootblock = new block(identifier);
        register_id = 1;
    }

    public void print(){
        if(isbuiltin){
            System.out.print("declare " + returntype + " @" + identifier + "(");
        }
        else {
            System.out.print("define " + Objects.requireNonNullElse(ret_.irtype, "void") + " @" + identifier + '(');
        }
        for(int i = 0 ; i < parameter_list.size() - 1;i++){
            register cur = parameter_list.get(i);
            System.out.print(cur.type + " " + cur + ", ");
        }
        if(parameter_list.size() != 0){
            register cur = parameter_list.get(parameter_list.size() - 1);
            System.out.print(cur.type + " " + cur);
        }
        if(isbuiltin)System.out.println(")");
        else {
            System.out.println(")" + " {");
            rootblock.print();
            blocks.forEach(x -> {
                x.print();
                System.out.println();
            });

            System.out.println(ret_.toString());
            System.out.println("}");
        }
    }

}
