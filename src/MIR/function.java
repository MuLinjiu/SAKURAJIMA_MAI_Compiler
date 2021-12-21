package MIR;

import java.util.ArrayList;

public class function {
    public String identifier;
    //public ArrayList<statement> alloca_block = new ArrayList<>();
    public block rootblock;
    public ArrayList<block>blocks = new ArrayList<>();
    public int register_id;
    public ret ret_;
    public ArrayList<register>parameter_list = new ArrayList<>();
    public ArrayList<String> parameterid = new ArrayList<>();
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
        if(ret_.irtype != null)
            System.out.print ("define " + ret_.irtype + " @" + identifier + '(') ;
        else System.out.print ("define " + "void" + " @" + identifier + '(') ;
        for(int i = 0 ; i < parameter_list.size();i++){
            if(parameter_list.size() != 0){
                if(i == parameter_list.size() - 1) {
                    register curreg = parameter_list.get(i);
                    System.out.print(curreg.type + " " + curreg );
                }else{
                    register curreg = parameter_list.get(i);
                    System.out.print(curreg.type + " " + curreg + ", ");
                }
            }

        }
        System.out.println(")"+" {");
        rootblock.print(false);
        blocks.forEach(x -> {
            x.print(true);
            System.out.println();
        });

        System.out.println(ret_.toString());
        System.out.println("}");
    }

}
