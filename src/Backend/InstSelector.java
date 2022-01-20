package Backend;

import Asembly.AsmBlock;
import Asembly.AsmFunc;
import Asembly.AsmModule;
import Asembly.Global.GlobalReg;
import Asembly.Global.GlobalStringConstant;
import Asembly.Inst.*;
import Asembly.Operand.*;
import MIR.*;
import MIR.Global_def;
import MIR.entity;
import MIR.global_string_constant;
import MIR.statement;

import java.util.ArrayList;
import java.util.HashMap;

public class InstSelector {
    Global_def global_def;
    AsmModule top_module;
    AsmFunc curfunction;
    AsmBlock curblock;
    PhyReg[] phy_regs = new PhyReg[32];
    PhyReg zero,sp,ra,a0,s0;
    PhyReg t0,t1,t2,t3;

    HashMap<String, ArrayList<Integer>>class_offset = new HashMap<>();

    public InstSelector(Global_def global_def_, AsmModule top_module_){
        global_def = global_def_;
        top_module = top_module_;
        init_phyreg();
        reg_alloc_module();
    }
    public void init_phyreg(){
        zero = phy_regs[0] = new PhyReg("zero");
        sp = phy_regs[2] = new PhyReg("sp");
        ra = phy_regs[1] = new PhyReg("ra");
        t0 = phy_regs[5] = new PhyReg("t0");
        t1 = phy_regs[6] = new PhyReg("t1");
        t2 = phy_regs[7] = new PhyReg("t2");
        s0 = phy_regs[8] = new PhyReg("s0");

        for(int i = 10; i <= 17; i++){
            phy_regs[i] = new PhyReg("a" + (i - 10));
        }
        a0 = phy_regs[10];
        for(int i = 18; i <= 27; i++){
            phy_regs[i] = new PhyReg("s" + (i - 16));
        }
        t3 = phy_regs[28] = new PhyReg("t3");
        visit_Global_def();
    }

    public void visit_Global_def(){
        for(statement stmt : global_def.global_def_stmts){
            if(stmt instanceof global_string_constant ){
                global_string_constant glbal_str = (global_string_constant)stmt;
                top_module.globalDefine.add(new GlobalStringConstant(glbal_str.reg.reg_number,glbal_str.string_constant));
            }else if(stmt instanceof global_def_stmt){
                global_def_stmt  glbal_reg = (global_def_stmt)stmt;
                top_module.globalDefine.add(new GlobalReg(glbal_reg.global_register.reg_number,glbal_reg.initconstant.value,glbal_reg.global_register.type.size));
                //System.out.println(glbal_reg.global_register.reg_number);
            }else if(stmt instanceof class_define_stmt ){
                class_define_stmt glbal_class = (class_define_stmt)stmt;
                CLASS class_type = glbal_class.class_type;
                String class_name = glbal_class.class_type.class_name;

                ArrayList<Integer> class_offfset = new ArrayList<>();
                class_offfset.add(0);
                for(int i = 0 ; i < class_type.class_irtypes.size(); i++){
                    IRTYPE cur = class_type.class_irtypes.get(i);
                    class_offfset.add(class_offfset.get(class_offfset.size() - 1) + cur.size);
                }
                class_offset.put(class_name,class_offfset);
            }
        }
        visit_Module();
    }

    public void visit_Module(){
        for(function func : global_def.functions){
            if(func.isbuiltin)continue;
            else visit_func(func);
            top_module.functions.add(curfunction);
        }
        visit_phi();
    }

    public void visit_func(function function){
        curfunction = new AsmFunc(function.identifier);
        AsmBlock para_block = new AsmBlock(function.identifier + "_parameters");
        curfunction.asmblocks.add(para_block);
        curfunction.offset += 4;
        curfunction.reg_offset.put(ra,curfunction.offset);
        curfunction.offset += 4;
        curfunction.reg_offset.put(s0, curfunction.offset);
        for(int i = 0 ; i < Integer.min(8,function.parameter_list.size());i++){//放寄存器
            register curparameter = function.parameter_list.get(i);
            VirtReg parareg = new VirtReg(curfunction.cur_reg_id++, curparameter.type.size);
            para_block.push_back(new MvInst(parareg,phy_regs[10 + i]));
            curfunction.toreg_map.put(curparameter.reg_number,parareg);
        }
        for(int i = 8 ; i < function.parameter_list.size(); i++){//放内存
            register curparameter = function.parameter_list.get(i);
            VirtReg parareg = new VirtReg(curfunction.cur_reg_id++, curparameter.type.size);
            para_block.push_back(new LoadInst(curparameter.type.size,parareg,s0,new Imm(i * 4 - 32)));
            curfunction.toreg_map.put(curparameter.reg_number,parareg);
        }
        visit_block(function.rootblock);
        curfunction.asmblocks.add(curblock);////////
        for(block cur : function.blocks){
            visit_block(cur);
            curfunction.asmblocks.add(curblock);
        }
        visit_block(function.returnblock);
        curfunction.asmblocks.add(curblock);////////

        visit_Inst(function.ret_);
    }

    public void visit_block(block curirblock){
        curblock = new AsmBlock(curirblock.Identifier);
        for(statement stmt : curirblock.alloca_stmts ){
            visit_Inst(stmt);
        }
        for(statement stmt : curirblock.stmts){
            visit_Inst(stmt);
        }
    }


    public VirtReg trans(entity entity_){
        VirtReg rs;
        if(entity_ instanceof constant){
            if(entity_.type instanceof NULL_PTR){
                rs = new VirtReg(curfunction.cur_reg_id++, 4);
                curblock.push_back(new LiInst(rs,new Imm(0)));
                return rs;
            }else{
                rs = new VirtReg(curfunction.cur_reg_id++, 4);
                int v = ((constant)entity_).value;
                curblock.push_back(new LiInst(rs,new Imm(v)));
                return rs;
            }
        }else {
            register reg = (register) entity_;
            if(reg.type instanceof NULL_PTR){
                rs = new VirtReg(curfunction.cur_reg_id++, 4);
                curblock.push_back(new LiInst(rs,new Imm(0)));
                return rs;
            }
            if(!reg.isglobal){
                if(!curfunction.toreg_map.containsKey(reg.reg_number)){
                    rs = new VirtReg(curfunction.cur_reg_id++, reg.type.size);
                    curfunction.toreg_map.put(reg.reg_number,rs);
                    curfunction.offset += 4;
                    curfunction.reg_offset.put(rs, curfunction.offset);
                    return rs;
                }else{
                    return curfunction.toreg_map.get(reg.reg_number);
                }
            }else{
                rs = new VirtReg(curfunction.cur_reg_id++, reg.type.size);
                curblock.push_back(new LaInst(rs,reg.reg_number));
                return rs;
            }
        }
    }


    public VirtReg trans(entity entity_, Inst inst_){//某一条前置插入
        VirtReg rs;
        if(entity_ instanceof constant){
            if(entity_.type instanceof NULL_PTR){
                rs = new VirtReg(curfunction.cur_reg_id++, 4);
                curblock.insert_before(inst_,new LiInst(rs,new Imm(0)));
                return rs;
            }else{
                rs = new VirtReg(curfunction.cur_reg_id++, 4);
                int v = ((constant)entity_).value;
                curblock.insert_before(inst_,new LiInst(rs,new Imm(v)));
                return rs;
            }
        }else {
            register reg = (register) entity_;
//            if(reg.type instanceof NULL_PTR){
//                rs = new VirtReg(curfunction.cur_reg_id++, 4);
//                curblock.insert_before(inst_,new LaInst(rs,new Imm(0)));
//                return rs;
//            }
            if(!reg.isglobal){
                if(!curfunction.toreg_map.containsKey(reg.reg_number)){
                    rs = new VirtReg(curfunction.cur_reg_id++, reg.type.size);
                    curfunction.toreg_map.put(reg.reg_number,rs);
                    curfunction.offset += 4;
                    curfunction.reg_offset.put(rs, curfunction.offset);
                    return rs;
                }else{
                    return curfunction.toreg_map.get(reg.reg_number);
                }
            }else{
                rs = new VirtReg(curfunction.cur_reg_id++, reg.type.size);
                curblock.insert_before(inst_,new LaInst(rs,reg.reg_number));
                return rs;
            }
        }

    }

    public void visit_Inst(statement cur_ir_stmt){
        if(cur_ir_stmt instanceof alloca ){
            alloca inst = (alloca) cur_ir_stmt;
            if(!curfunction.toreg_map.containsKey(inst.reg.reg_number)){
                VirtReg cur = new VirtReg(curfunction.cur_reg_id++, inst.type.size);
                curfunction.toreg_map.put(inst.reg.reg_number,cur);
                curfunction.offset += 4;
                curfunction.reg_offset.put(cur, curfunction.offset);
            }
        }else if(cur_ir_stmt instanceof load ){
            load curload = (load)cur_ir_stmt;
            entity from = curload.from, to =  curload.to;
            VirtReg rd = new VirtReg(curfunction.cur_reg_id++, to.type.size);
            if(from instanceof register && ((register) from).isglobal){
                curblock.push_back(new LoadInst(((register) from).type.size,rd,((register) from).reg_number));
            }else{
                VirtReg rs = trans(from);
                if(curfunction.reg_offset.containsKey(rs)){
                    int imm = -curfunction.reg_offset.get(rs);
                    VirtReg tmp = new VirtReg(curfunction.cur_reg_id++,4);
                    curblock.push_back(new LiInst(tmp,new Imm(imm)));
                    curblock.push_back(new CalcRInst(CalcRInst.RType.add,s0,tmp,tmp));//栈位置
                    curblock.push_back(new LoadInst(to.type.size,rd,tmp,new Imm(0)));

                }else{
                    curblock.push_back(new LoadInst(to.type.size,rd,rs,new Imm(0)));
                }

            }
            curfunction.toreg_map.put(((register)to).reg_number,rd);

        }else if(cur_ir_stmt instanceof store ){
            store curstore = (store)cur_ir_stmt;
            entity from = curstore.from, to = curstore.to;
            if(from == null || to == null)return;

            //VirtReg rd = new VirtReg(curfunction.cur_reg_id++, to.type.size);
            if(to instanceof register && ((register) to).isglobal){
                VirtReg rs = trans(from),t = new VirtReg(curfunction.cur_reg_id++, 4);
                curblock.push_back(new StoreInst(to.type.size,rs,((register) to).reg_number,t));
            }else{
                VirtReg rs = trans(from),rd = trans(to);
                if(curfunction.reg_offset.containsKey(rd)){
                    int imm = -curfunction.reg_offset.get(rd);
                    VirtReg tmp = new VirtReg(curfunction.cur_reg_id++,4);
                    curblock.push_back(new LiInst(tmp,new Imm(imm)));
                    curblock.push_back(new CalcRInst(CalcRInst.RType.add,s0,tmp,tmp));
                    curblock.push_back(new StoreInst(from.type.size,rs,tmp,new Imm(0)));

                }else{
                    curblock.push_back(new StoreInst(from.type.size,rs,rd,new Imm(0)));
                }

            }
            //curfunction.toreg_map.put(((register)to).reg_number,rd);

        }else if(cur_ir_stmt instanceof hanshudiaoyong ){
            hanshudiaoyong curfunction_call = (hanshudiaoyong) cur_ir_stmt;
            for(int i = 0 ; i < Integer.min(8,curfunction_call.parameters.size()); i++){
                entity curentity = curfunction_call.parameters.get(i);
                VirtReg rs = trans(curentity);
                curblock.push_back(new MvInst(phy_regs[i + 10],rs));
            }
            for(int i = 8 ; i < curfunction_call.parameters.size() ;i++){
                entity curentity = curfunction_call.parameters.get(i);
                VirtReg rs = trans(curentity);
                curblock.push_back(new StoreInst(curentity.type.size,rs,sp,new Imm(i * 4 - 32)));//栈往下塞
            }
            curblock.push_back(new CallInst(curfunction_call.function_name));
            if(!curfunction_call.void_or_not){
                VirtReg rd = new VirtReg(curfunction.cur_reg_id++,curfunction_call.dest_reg.type.size);
                curblock.push_back(new MvInst(rd,a0));
                curfunction.toreg_map.put(curfunction_call.dest_reg.reg_number,rd);
            }
        }else if(cur_ir_stmt instanceof ret){
            ret curret = (ret) cur_ir_stmt;
            if(curret.irtype != null){//非void
                VirtReg rs = trans(curret.reg);
                curblock.push_back(new MvInst(a0,rs));
            }

        }else if(cur_ir_stmt instanceof branch){
            branch  curirbranch = (branch) cur_ir_stmt;
            if(curirbranch.direct_jump){
                curblock.push_back(new JInst(curirbranch.true_label));
            }else {
                curblock.push_back(new BranchInst(BranchInst.BrType.bnez,trans(curirbranch.condition),curirbranch.true_label));
                curblock.push_back(new JInst(curirbranch.false_label));
            }

        }else if(cur_ir_stmt instanceof trunc){
            trunc  curtrunc = (trunc)cur_ir_stmt;
            curfunction.toreg_map.put(((register)curtrunc.to).reg_number,trans(curtrunc.from));
        }else if(cur_ir_stmt instanceof zext){
            zext  curzext = (zext)cur_ir_stmt;
            curfunction.toreg_map.put(((register)curzext.to).reg_number,trans(curzext.from));

        }else if(cur_ir_stmt instanceof bitcast){
            bitcast  curbitcast = (bitcast) cur_ir_stmt;
            curfunction.toreg_map.put(((register)curbitcast.to).reg_number,trans(curbitcast.from));
        }else if(cur_ir_stmt instanceof binary ){
            binary curbinarystmt = (binary) cur_ir_stmt;
            process_binary(curbinarystmt);
        }else if(cur_ir_stmt instanceof getelement){
            getelement  curgetelemrnt = (getelement) cur_ir_stmt;
            register from = curgetelemrnt.from,to = curgetelemrnt.to;
            VirtReg rs = trans(from);
            VirtReg rd = new VirtReg(curfunction.cur_reg_id++, to.type.size);
            entity value;
            if(curgetelemrnt.values.size() == 1){
                value = curgetelemrnt.values.get(0);
                VirtReg mul = new VirtReg(curfunction.cur_reg_id++, value.type.size);
                curblock.push_back(new CalcRInst(CalcRInst.RType.mul,trans(value),trans(new constant(((ptr_type)from.type).irtype.size,value.type)),mul));
                curblock.push_back(new CalcRInst(CalcRInst.RType.add,rs,mul,rd));
            }else{
                constant value_ = (constant) curgetelemrnt.values.get(1);
                int index = value_.value;
                String calss_name = ((CLASS)((ptr_type)from.type).irtype).class_name;
                int off = class_offset.get(calss_name).get(index);
                curblock.push_back(new CalcIInst(CalcIInst.IType.addi,rd,rs,new Imm(off)));
            }
            curfunction.toreg_map.put(to.reg_number,rd);

        }else if(cur_ir_stmt instanceof PHI){
            PHI  curphi = (PHI)cur_ir_stmt;
            register dest = curphi.destreg;
            VirtReg rd = new VirtReg(curfunction.cur_reg_id++, dest.type.size);
            curfunction.toreg_map.put(dest.reg_number,rd);
            for(int i = 0 ; i < curphi.labels.size(); i++){
                label curlabel = curphi.labels.get(i);
                entity value = curphi.values.get(i);
                curfunction.phird.put(curlabel.label_name,rd);
                curfunction.phivalue.put(curlabel.label_name,value);
            }
        }

    }

    public void process_binary(binary curstmt){
        entity lhs = curstmt.lhs, rhs = curstmt.rhs,dest = curstmt.to;
        VirtReg rs1 = trans(lhs),rs2 = trans(rhs),rd = new VirtReg(((register)dest).reg_number,dest.type.size);
        if(curstmt.operator == binary.opType.add) curblock.push_back(new CalcRInst(CalcRInst.RType.add,rs1,rs2,rd));
        else if(curstmt.operator == binary.opType.sub) curblock.push_back(new CalcRInst(CalcRInst.RType.sub,rs1,rs2,rd));
        else if(curstmt.operator == binary.opType.mul) curblock.push_back(new CalcRInst(CalcRInst.RType.mul,rs1,rs2,rd));
        else if(curstmt.operator == binary.opType.sdiv)curblock.push_back(new CalcRInst(CalcRInst.RType.div,rs1,rs2,rd));
        else if(curstmt.operator == binary.opType.srem)curblock.push_back(new CalcRInst(CalcRInst.RType.rem,rs1,rs2,rd));
        else if(curstmt.operator == binary.opType.shl)curblock.push_back(new CalcRInst(CalcRInst.RType.sll,rs1,rs2,rd));
        else if(curstmt.operator == binary.opType.ashr)curblock.push_back(new CalcRInst(CalcRInst.RType.sra,rs1,rs2,rd));
        else if(curstmt.operator == binary.opType.and)curblock.push_back(new CalcRInst(CalcRInst.RType.and,rs1,rs2,rd));
        else if(curstmt.operator == binary.opType.xor)curblock.push_back(new CalcRInst(CalcRInst.RType.xor,rs1,rs2,rd));
        else if(curstmt.operator == binary.opType.or)curblock.push_back(new CalcRInst(CalcRInst.RType.or,rs1,rs2,rd));
        else if(curstmt.operator == binary.opType.slt)curblock.push_back(new CalcRInst(CalcRInst.RType.slt,rs1,rs2,rd));
        else if(curstmt.operator == binary.opType.sle){
            curblock.push_back(new CalcRInst(CalcRInst.RType.slt,rs2,rs1,rd));
            curblock.push_back(new CalcIInst(CalcIInst.IType.xori,rd,rd,new Imm(1)));
        }else if(curstmt.operator == binary.opType.sgt)curblock.push_back(new CalcRInst(CalcRInst.RType.slt,rs2,rs1,rd));
        else if(curstmt.operator == binary.opType.sge){
            curblock.push_back(new CalcRInst(CalcRInst.RType.slt,rs1,rs2,rd));
            curblock.push_back(new CalcIInst(CalcIInst.IType.xori,rd,rd,new Imm(1)));
        }else if(curstmt.operator == binary.opType.eq){
            curblock.push_back(new CalcRInst(CalcRInst.RType.xor,rs1,rs2,rd));
            curblock.push_back(new CalcIInst(CalcIInst.IType.sltiu,rd,rd,new Imm(1)));
        }else if(curstmt.operator == binary.opType.ne){
            curblock.push_back(new CalcRInst(CalcRInst.RType.xor,rs1,rs2,rd));
            curblock.push_back(new CalcIInst(CalcIInst.IType.sltiu,rd,rd,new Imm(1)));
            curblock.push_back(new CalcIInst(CalcIInst.IType.xori,rd,rd,new Imm(1)));
        }
        curfunction.toreg_map.put(((register)dest).reg_number,rd);

    }

    public void visit_phi(){
        for(AsmFunc curfunc : top_module.functions){
            if(!curfunc.phird.isEmpty()) {
                curfunction = curfunc;
                for(AsmBlock block : curfunction.asmblocks){
                    if(curfunc.phird.containsKey(block.label)) {
                        curblock = block;
                        entity value = curfunc.phivalue.get(block.label);
                        Inst markInst = null;
                        for(Inst inst = block.head; inst != null; inst = inst.next){
                            if((inst instanceof BranchInst && ((BranchInst) inst).Type == BranchInst.BrType.bnez) || inst instanceof JInst){
                                markInst = inst;
                                break;
                            }
                        }
                        VirtReg rs = trans(value,markInst);
                        VirtReg rd = curfunc.phird.get(block.label);
                        for(Inst inst = block.head; inst != null; inst = inst.next){
                            if((inst instanceof BranchInst && ((BranchInst) inst).Type == BranchInst.BrType.bnez) || inst instanceof JInst){
                                block.insert_before(inst, new MvInst(rd,rs));
                            }
                        }
                    }
                }
            }
        }

    }

    public Reg Load_VR(Inst inst, Reg reg, PhyReg phyReg){
        if(reg instanceof VirtReg){
            VirtReg  Vreg = (VirtReg) reg;
            if(!curfunction.reg_offset.containsKey(Vreg)){
                curfunction.offset += 4;
                curfunction.reg_offset.put(Vreg, curfunction.offset);
            }
            int imm = -curfunction.reg_offset.get(Vreg);
            curblock.insert_before(inst,new LiInst(t3, new Imm(imm)));
            curblock.insert_before(inst, new CalcRInst(CalcRInst.RType.add,s0,t3,t3));//获取地址
            curblock.insert_before(inst, new LoadInst(Vreg.size,phyReg,t3,new Imm(0)));//load
            return phyReg;
        }else return reg;
    }

    public Reg Store_VR(Inst inst, Reg reg, PhyReg phyReg){
        if(reg instanceof VirtReg){
            VirtReg  Vreg = (VirtReg) reg;
            if(!curfunction.reg_offset.containsKey(Vreg)){
                curfunction.offset += 4;
                curfunction.reg_offset.put(Vreg, curfunction.offset);
            }
            int imm = -curfunction.reg_offset.get(Vreg);
            curblock.insert_after(inst,new StoreInst(Vreg.size,phyReg,t3,new Imm(0)));//倒序
            curblock.insert_after(inst, new CalcRInst(CalcRInst.RType.add,s0,t3,t3));
            curblock.insert_after(inst, new LiInst(t3,new Imm(imm)));
            return phyReg;
        }else return reg;
    }

    public void reg_alloc_module(){
        for(AsmFunc function : top_module.functions){
            curfunction = function;
            reg_alloc_func(curfunction);
        }
    }

    public void reg_alloc_func(AsmFunc function){
        for(AsmBlock block : function.asmblocks){
            curblock = block;
            reg_alloc_block(block);
        }
        process_func(function);
    }

    public void process_func(AsmFunc function){
        int off = function.offset;
        if(off % 16 != 0)off = (off/16 + 1) * 16;//必须为16倍数
        AsmBlock head = function.asmblocks.get(0);
        if(head.head == null)head.push_back(new MvInst(s0,t1));//倒序
        else head.insert_before(head.head,new MvInst(s0,t1));
        head.insert_before(head.head,new StoreInst(4,s0,t1,new Imm(-8)));//函数定义导致s0存入t1-8
        head.insert_before(head.head,new StoreInst(4,ra,t1,new Imm(-4)));
        head.insert_before(head.head,new CalcRInst(CalcRInst.RType.add,sp,t0,t1));
        head.insert_before(head.head,new CalcRInst(CalcRInst.RType.sub,sp,t0,sp));
        head.insert_before(head.head, new LiInst(t0,new Imm(off)));
        //最终s0为原sp，sp（原）-4为ra，-8为s0，t1是原sp，sp-了imm。
        AsmBlock tail = function.asmblocks.get(function.asmblocks.size() - 1);
        tail.push_back(new LiInst(t0, new Imm(off)));
        tail.push_back(new CalcRInst(CalcRInst.RType.add,sp,t0,t1));
        tail.push_back(new LoadInst(4,ra,t1,new Imm(-4)));//获取sp和return address
        tail.push_back(new LoadInst(4,s0,t1,new Imm(-8)));
        tail.push_back(new CalcRInst(CalcRInst.RType.add,sp,t0,sp));
        tail.push_back(new RetInst());
    }

    public void reg_alloc_block(AsmBlock block){
        for(Inst inst = block.head; inst != null ; inst = inst.next){
            if(inst instanceof LoadInst){
                LoadInst x = (LoadInst)inst;
                x.rd = Store_VR(inst,(Reg) x.rd,t1);//t为实际寄存器，获取imm获取地址再塞进t1，返回给rd
                x.rs = Load_VR(inst,(Reg)x.rs,t0);
            }else if(inst instanceof StoreInst){
                StoreInst x = (StoreInst)inst;
                x.rd = Load_VR(inst,(Reg)x.rd,t0);
                x.rs = Load_VR(inst,(Reg) x.rs,t1);
                x.rt = Load_VR(inst,(Reg) x.rt,t1);
            }else if(inst instanceof MvInst){
                MvInst x = (MvInst)inst;
                x.rd = Store_VR(inst,(Reg) x.rd,t1);
                x.rs = Load_VR(inst,(Reg) x.rs,t0);
            }else if(inst instanceof LiInst){
                LiInst x = (LiInst)inst;
                x.rd = Store_VR(inst,(Reg) x.rd,t0);
            }else if(inst instanceof LaInst){
                LaInst x = (LaInst)inst;
                x.rd = Store_VR(inst,(Reg) x.rd,t0);
            }else if(inst instanceof CalcIInst ){
                CalcIInst x = (CalcIInst)inst;
                x.rs = Load_VR(inst,(Reg) x.rs,t0);
                x.rd = Store_VR(inst,(Reg) x.rd,t1);
            }else if(inst instanceof CalcRInst ){
                CalcRInst x = (CalcRInst)inst;
                x.rs1 = Load_VR(inst,(Reg) x.rs1,t0);
                x.rs2 = Load_VR(inst,(Reg) x.rs2,t1);
                x.rd = Store_VR(inst,(Reg) x.rd,t2);
            }else if(inst instanceof BranchInst){
                BranchInst x = (BranchInst)inst;
                x.rs = Load_VR(inst,(Reg) x.rs,t0);
            }
        }
    }
}
