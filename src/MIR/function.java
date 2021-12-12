package MIR;

import java.util.ArrayList;

public class function {
    public String identifier;
    public block rootblock;
    public ArrayList<block>blocks = new ArrayList<>();
    public int register_id;
    public ret ret_;

    public function(String name){
        identifier = name;
        rootblock = new block(name);
        //blocks.add(rootblock);
        register_id = 1;
    }

    public function(){
        identifier = "Global";
        rootblock = new block(identifier);
        register_id = 1;
    }

    public void print(){
        rootblock.print();
        blocks.forEach(x -> {
            x.print();
            System.out.println();
        });
    }
}
