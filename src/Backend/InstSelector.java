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
import Util.error.semanticError;
import Util.position;
import org.antlr.v4.runtime.misc.Pair;

import java.util.*;

public class InstSelector {
    Global_def global_def;
    AsmModule top_module;
    AsmFunc curfunction;
    AsmBlock curblock;
    PhyReg[] phy_regs = new PhyReg[32];
    PhyReg zero,sp,ra,a0,s0;
    PhyReg t0,t1,t2,t3;

    HashMap<String, AsmBlock>label_to_block = new HashMap<>();

    HashMap<String, ArrayList<Integer>>class_offset = new HashMap<>();

    public InstSelector(Global_def global_def_, AsmModule top_module_){
        global_def = global_def_;
        top_module = top_module_;
        init_phyreg();
        //reg_alloc_module();
        run();



    }
    public void init_phyreg(){
        zero = phy_regs[0] = AsmModule.regs.get(0);
        sp = phy_regs[2] = AsmModule.regs.get(2);
        ra = phy_regs[1] = AsmModule.regs.get(1);
        t0 = phy_regs[5] = AsmModule.regs.get(5);
        t1 = phy_regs[6] = AsmModule.regs.get(6);
        t2 = phy_regs[7] = AsmModule.regs.get(7);
        s0 = phy_regs[8] = AsmModule.regs.get(8);

        for(int i = 10; i <= 17; i++){
            phy_regs[i] = AsmModule.regs.get(i);
        }
        a0 = phy_regs[10];
        for(int i = 18; i <= 27; i++){
            phy_regs[i] = AsmModule.regs.get(i);
        }
        t3 = phy_regs[28] = AsmModule.regs.get(28);
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
                    int tmp_size = 0;
                    if(cur instanceof ptr_type)tmp_size = 8;
                    else tmp_size = ((INT_TYPE)cur).width / 8;
                    class_offfset.add(class_offfset.get(class_offfset.size() - 1) + tmp_size);
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
            para_block.push_back(new MvInst(parareg,phy_regs[10 + i]));//range 10 - 17;ai
            curfunction.toreg_map.put(curparameter.reg_number,parareg);
        }
        for(int i = 8 ; i < function.parameter_list.size(); i++){//放内存
            register curparameter = function.parameter_list.get(i);
            VirtReg parareg = new VirtReg(curfunction.cur_reg_id++, curparameter.type.size);
            para_block.push_back(new LoadInst(curparameter.type.size,parareg,s0,new Imm(i * 4 - 32)));
            curfunction.toreg_map.put(curparameter.reg_number,parareg);
        }

        label_to_block.put(function.rootblock.Identifier,new AsmBlock(function.rootblock.Identifier));
        for(block cur : function.blocks){
            label_to_block.put(cur.Identifier,new AsmBlock(cur.Identifier));
            //System.out.println(cur.Identifier);
        }
        label_to_block.put(function.returnblock.Identifier, new AsmBlock(function.returnblock.Identifier));

        para_block.succ.add(label_to_block.get((function.rootblock).Identifier));
        visit_block(function.rootblock);
        curfunction.asmblocks.add(curblock);////////
        //label_to_block.put(function.rootblock.Identifier,curblock);
        for(block cur : function.blocks){
            visit_block(cur);
            curfunction.asmblocks.add(curblock);
            //label_to_block.put(cur.Identifier,curblock);
        }
        visit_block(function.returnblock);
        curfunction.asmblocks.add(curblock);////////
        //label_to_block.put(function.returnblock.Identifier,curblock);
        visit_Inst(function.ret_);
    }

    public void visit_block(block curirblock){
        //curblock = new AsmBlock(curirblock.Identifier);
        curblock = label_to_block.get(curirblock.Identifier);
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
//                    curfunction.offset += reg.type.size;
//                    curfunction.reg_offset.put(rs, curfunction.offset);
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
//                    curfunction.offset += reg.type.size;
//                    curfunction.reg_offset.put(rs, curfunction.offset);
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
//                curfunction.offset += inst.type.size;
//                curfunction.reg_offset.put(cur, curfunction.offset);
                curfunction.allocaregs.add(inst.reg.reg_number);
            }
        }else if(cur_ir_stmt instanceof load){
            load curload = (load)cur_ir_stmt;
            entity from = curload.from, to =  curload.to;
            VirtReg rd = new VirtReg(curfunction.cur_reg_id++, to.type.size);
            if(from instanceof register && ((register) from).isglobal){
                curblock.push_back(new LoadInst(((register) from).type.size,rd,((register) from).reg_number));
            }else{
                VirtReg rs = trans(from);
//                if(curfunction.reg_offset.containsKey(rs)){
//                    int imm = -curfunction.reg_offset.get(rs);
//                    if(imm >= -2048 && imm < 2048)curblock.push_back(new LoadInst(to.type.size,rd,s0,new Imm(imm)));
//                    else {
//                        VirtReg tmp = new VirtReg(curfunction.cur_reg_id++, 4);
//                        curblock.push_back(new LiInst(tmp, new Imm(imm)));
//                        curblock.push_back(new CalcRInst(CalcRInst.RType.add, s0, tmp, tmp));//栈位置
//                        curblock.push_back(new LoadInst(to.type.size, rd, tmp, new Imm(0)));
//                    }
//
//                }else{
//                    curblock.push_back(new LoadInst(to.type.size,rd,rs,new Imm(0)));
//                    //System.out.println(1);
//                }
                if(!curfunction.allocaregs.contains(((register)from).reg_number)){
                    if(curfunction.reg_offset.containsKey(rs)){

                    }else {
                        curblock.push_back(new LoadInst(to.type.size, rd, rs, new Imm(0)));
                    }
                }else{
                    curblock.push_back(new MvInst(rd,rs));
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

                if(!curfunction.allocaregs.contains(((register)to).reg_number)){
                    if(curfunction.reg_offset.containsKey(rd)){
                        int imm = -curfunction.reg_offset.get(rd);
                        if(imm >= -2048 && imm < 2048){
                            curblock.push_back(new StoreInst(from.type.size,rs,s0,new Imm(imm)));
                        }
                        else {
                            VirtReg tmp = new VirtReg(curfunction.cur_reg_id++, 4);
                            curblock.push_back(new LiInst(tmp, new Imm(imm)));
                            curblock.push_back(new CalcRInst(CalcRInst.RType.add, s0, tmp, tmp));
                            curblock.push_back(new StoreInst(from.type.size, rs, tmp, new Imm(0)));
                        }

                    }else{
                        curblock.push_back(new StoreInst(from.type.size,rs,rd,new Imm(0)));
                        //System.out.println(2);
                    }
                }else{
                    curblock.push_back(new MvInst(rd,rs));
                }

            }
            //curfunction.toreg_map.put(((register)to).reg_number,rd);

        }else if(cur_ir_stmt instanceof hanshudiaoyong ){
            hanshudiaoyong curfunction_call = (hanshudiaoyong) cur_ir_stmt;
            int poss_off = 0;
            for(int i = 8 ; i < curfunction_call.parameters.size();i++)poss_off += curfunction_call.parameters.get(i).type.size;
            curfunction.func_call_offset = Integer.max(poss_off,curfunction.func_call_offset);
            for(int i = 0 ; i < Integer.min(8,curfunction_call.parameters.size()); i++){
                entity curentity = curfunction_call.parameters.get(i);
                VirtReg rs = trans(curentity);
                curblock.push_back(new MvInst(phy_regs[i + 10],rs));// range 10 - 17; already get from top_module.
            }
            for(int i = 8 ; i < curfunction_call.parameters.size() ;i++){
                entity curentity = curfunction_call.parameters.get(i);
                VirtReg rs = trans(curentity);
                curblock.push_back(new StoreInst(curentity.type.size,rs,sp,new Imm(i * 4 - 32)));//栈往下塞
            }
            CallInst call = new CallInst(curfunction_call.function_name);
            //need to be donel;
//            call.def.add(ra);
//            call.def.add(t0);
//            call.def.add(t1);
//            call.def.add(t2);
//            call.def.addAll(Arrays.asList(phy_regs).subList(10, 18));
//            call.def.addAll(Arrays.asList(phy_regs).subList(28, 32));
            curblock.push_back(call);
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
                //curblock.push_back(new RetInst());
            }
            //curblock.push_back(new RetInst());

        }else if(cur_ir_stmt instanceof branch){
            branch  curirbranch = (branch) cur_ir_stmt;
            if(curirbranch.direct_jump){
                curblock.push_back(new JInst(curirbranch.true_label));

                if(label_to_block.containsKey(curirbranch.true_label.label_name))curblock.succ.add(label_to_block.get(curirbranch.true_label.label_name));
                else {
                    System.out.println(curirbranch.true_label.label_name);
                    //throw new semanticError("succ1",new position(0,0));
                }
            }else {
                curblock.push_back(new BranchInst(BranchInst.BrType.bnez,trans(curirbranch.condition),curirbranch.true_label));
                curblock.push_back(new JInst(curirbranch.false_label));


                if(label_to_block.containsKey(curirbranch.false_label.label_name))curblock.succ.add(label_to_block.get(curirbranch.false_label.label_name));
                else {
                    System.out.println(curirbranch.false_label.label_name);
                    //throw new semanticError("succ2",new position(0,0));
                }
                if(label_to_block.containsKey(curirbranch.true_label.label_name))curblock.succ.add(label_to_block.get(curirbranch.true_label.label_name));
                else {
                    System.out.println(curirbranch.true_label.label_name);
                    //throw new semanticError("succ3",new position(0,0));
                }
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
            if(imm >= -2048 && imm < 2048)curblock.insert_before(inst,new LoadInst(Vreg.size,phyReg,s0,new Imm(imm)));
            else {
                curblock.insert_before(inst, new LiInst(t3, new Imm(imm)));
                curblock.insert_before(inst, new CalcRInst(CalcRInst.RType.add, s0, t3, t3));//获取地址
                curblock.insert_before(inst, new LoadInst(Vreg.size, phyReg, t3, new Imm(0)));//load
            }
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
            if(imm >= -2048 && imm < 2048){
                curblock.insert_after(inst,new StoreInst(Vreg.size,phyReg,s0,new Imm(imm)));
                //System.out.println(3);
            }
            else {
                curblock.insert_after(inst, new StoreInst(Vreg.size, phyReg, t3, new Imm(0)));//倒序
                curblock.insert_after(inst, new CalcRInst(CalcRInst.RType.add, s0, t3, t3));
                curblock.insert_after(inst, new LiInst(t3, new Imm(imm)));
            }
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
        int off = function.offset + function.func_call_offset;
        //int off = function.offset;
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


//        AsmBlock tail = function.asmblocks.get(function.asmblocks.size() - 1);
//        if(off >= -2048 && off < 2048){
//            head.push_front(new CalcIInst(CalcIInst.IType.addi,s0,sp,new Imm(off)));
//            head.push_front(new StoreInst(4,s0,sp,new Imm(off - 8)));
//            head.push_front(new StoreInst(4,ra,sp,new Imm(off - 4)));
//            head.push_front(new CalcIInst(CalcIInst.IType.addi,sp,sp,new Imm(-off)));
//
//            tail.push_back(new RetInst());
//
//
//            tail.insert_before(tail.tail, new LoadInst(4, s0, sp,new Imm(off - 8)));
//            tail.insert_before(tail.tail, new LoadInst(4, ra, sp,new Imm(off - 4)));
//            tail.insert_before(tail.tail, new CalcIInst(CalcIInst.IType.addi,sp,sp,new Imm(off)));
//        }else{
//           head.push_front(new CalcRInst(CalcRInst.RType.add,sp,t0,s0));
//           head.push_front(new StoreInst(4,s0,t1,new Imm(-8)));
//           head.push_front(new StoreInst(4,ra,t1,new Imm(-4)));
//           head.push_front(new CalcRInst(CalcRInst.RType.add,sp,t0,t1));
//           head.push_front(new CalcRInst(CalcRInst.RType.sub,sp,t0,sp));
//           head.push_front(new LiInst(t0,new Imm(off)));
//
//           tail.push_back(new RetInst());
//
//           tail.insert_before(tail.tail,new LiInst(t0,new Imm(off)));
//           tail.insert_before(tail.tail, new CalcRInst(CalcRInst.RType.add,sp,t0,t1));
//           tail.insert_before(tail.tail, new LoadInst(4,s0,t1,new Imm(-8)));
//           tail.insert_before(tail.tail, new LoadInst(4,ra,t1,new Imm(-4)));
//           tail.insert_before(tail.tail, new CalcRInst(CalcRInst.RType.add,sp,t0,sp));
//
//        }


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



    static final int K = 27;

    HashMap<AsmBlock, HashSet<Operand>>live_in_map = new HashMap<>(), live_out_map = new HashMap<>(),def_map = new HashMap<>();

    public void liveness_analyse(AsmFunc function){
        live_in_map = new HashMap<>();
        live_out_map = new HashMap<>();
        def_map = new HashMap<>();
        function.asmblocks.forEach(block -> {
            HashSet<Operand> def = new HashSet<>(), use = new HashSet<>();
            for(Inst cur = block.head ; cur != null ; cur = cur.next){
                cur.use.forEach(reg -> {
                    if(!def.contains(reg))use.add(reg);
                });
                def.addAll(cur.def);
            }

            def_map.put(block,def);
            live_in_map.put(block,use);
            live_out_map.put(block,new HashSet<>());//initialize with empty

        });

        while(true){
            boolean flag = false;
            for(int i = function.asmblocks.size() - 1 ; i >= 0; i-- ){//倒序算法

                AsmBlock block = function.asmblocks.get(i);
                HashSet<Operand> live_in = live_in_map.get(block);
                HashSet<Operand> live_out = live_out_map.get(block);
                int origin_live_in_size = live_in.size();
                int origin_live_out_size = live_out.size();

                live_out.removeAll(def_map.get(block));
                live_in.addAll(live_out);
                block.succ.forEach(x -> {
                    live_out.addAll(live_in_map.get(x));
                });
                //live_out.size() == live_out_map.get(block).size(); 应该
                flag = (origin_live_in_size != live_in.size() || origin_live_out_size != live_out.size()) || flag;
            }

            if(!flag)break;
        }
//        System.out.println(1);
    }


    HashSet<Operand> precolored_nodes = new HashSet<>();
    HashSet<Operand> initial_nodes = new HashSet<>();
    HashSet<Operand> simplify_nodes = new HashSet<>();//simplify_worklist
    HashSet<Operand> freeze_nodes = new HashSet<>();//freeze_worklist
    HashSet<Operand> spill_nodes = new HashSet<>();//spill worklist
    HashSet<Operand> spilled_nodes = new HashSet<>();
    HashSet<Operand> coalesced_nodes = new HashSet<>();
    HashSet<Operand> colored_nodes = new HashSet<>();
    Stack<Operand> select_stack = new Stack<>();

    HashSet<MvInst> coalesced_moves = new HashSet<>();
    HashSet<MvInst> constrained_moves = new HashSet<>();
    HashSet<MvInst> frozen_moves = new HashSet<>();
    HashSet<MvInst> worklist_moves = new HashSet<>();
    HashSet<MvInst> active_moves = new HashSet<>();
    ArrayList<Operand> new_temps = new ArrayList<>();

    HashSet<Pair<Operand, Operand>> adj_set = new HashSet<>();
    HashMap<Operand, HashSet<Operand>> adj_list = new HashMap<>();
    HashMap<Operand, Integer> degree = new HashMap<>();
    HashMap<Operand, HashSet<MvInst>> move_list = new HashMap<>();
    HashMap<Operand, Operand> alias = new HashMap<>();
    HashMap<Operand, Integer> color = new HashMap<>();

//order from book


    HashMap<Operand, Integer> val_map = new HashMap<>();//for spill privilege

    // 使用静态活跃分析结果构造冲突图
    public void build(AsmFunc function){
        function.asmblocks.forEach(block -> {
            HashSet<Operand> live = live_out_map.get(block);
//            if(Objects.equals(curfunction.func_name, "classSlice_int_tail")) {
//                System.out.println(1);
//            }
            for(Inst cur = block.tail; cur != null; cur = cur.pre){//逆序
                //calc spill privilege
                cur.def.forEach(x -> {
                    val_map.replace(x,val_map.get(x) + (precolored_nodes.contains(x) ? 0 : 1));
                });
                cur.use.forEach(x -> {
                    val_map.replace(x,val_map.get(x) + (precolored_nodes.contains(x) ? 0 : 1));
                });

                if(cur instanceof MvInst){
                    live.removeAll(cur.use);
                    for(Operand var : cur.def){
                        move_list.get(var).add((MvInst) cur);
                    }
                    for(Operand var: cur.use){
                        move_list.get(var).add((MvInst) cur);
                    }
                    worklist_moves.add((MvInst) cur);
                }

                live.addAll(cur.def);
//                cur.def.forEach(x -> {
//                    if(x == AsmModule.regs.get(14)){
//                        System.out.println(1);
//                    }
//                });

                for(Operand var : cur.def){
                    live.forEach(x -> {
//                        if(var instanceof VirtReg && Objects.equals(((VirtReg) var).identifier, "VirtReg_11") || x instanceof VirtReg && Objects.equals(((VirtReg) x).identifier, "VirtReg_11")){
//                            if(Objects.equals(curfunction.func_name, "classSlice_int_tail")) {
//                                if (var instanceof VirtReg && Objects.equals(((VirtReg) var).identifier, "VirtReg_11")) {
//                                    System.out.println(x);
//                                }
//                                if (x instanceof VirtReg && Objects.equals(((VirtReg) x).identifier, "VirtReg_11")) System.out.println(var);
//                            }
//                        }
                        add_edge(var,x);
                    });
                }

                live.removeAll(cur.def);
                live.addAll(cur.use);
            }
        });
    }

    public void add_edge(Operand u, Operand v){
//        if(u instanceof VirtReg && Objects.equals(((VirtReg) u).identifier, "VirtReg_11") || v instanceof VirtReg && Objects.equals(((VirtReg) v).identifier, "VirtReg_11")){
//            if(Objects.equals(curfunction.func_name, "classSlice_int_tail")) {
//                if (u instanceof VirtReg && Objects.equals(((VirtReg) u).identifier, "VirtReg_11")) System.out.println(v);
//                if (v instanceof VirtReg && Objects.equals(((VirtReg) v).identifier, "VirtReg_11")) System.out.println(u);
//            }
//        }
        if(!adj_set.contains(new Pair<>(u,v)) && u != v){
            for (int i = 0; i < 32; i++)
                if (i == 0 || i == 2 || i == 3 || i == 4 || i == 8){
                    if (u == AsmModule.regs.get(i)){
                        // System.out.println(1);
                        return;
                    }
                    if (v == AsmModule.regs.get(i)){
                        return;
                    }
                }
            // System.out.println("add_edge: " + u + ", " + v);
            adj_set.add(new Pair<>(u,v));
            adj_set.add(new Pair<>(v,u));
            if(!precolored_nodes.contains(u)){
                adj_list.get(u).add(v);
                degree.replace(u,degree.get(u) + 1);
            }
            if(!precolored_nodes.contains(v)){
                adj_list.get(v).add(u);
                degree.replace(v,degree.get(v) + 1);
            }
        }
    }

    void make_worklist(){
        for(var n : new HashSet<>(initial_nodes)){
            initial_nodes.remove(n);
            if(degree.get(n) >= K){
                spill_nodes.add(n);
            }else if(move_related(n)){
                freeze_nodes.add(n);
            }else simplify_nodes.add(n);
        }
//        initial_nodes.forEach(n -> {
//
//            initial_nodes.remove(n);
//            if(degree.get(n) >= K){
//                spill_nodes.add(n);
//            }else if(move_related(n)){
//                freeze_nodes.add(n);
//            }else simplify_nodes.add(n);
//        });
    }

    HashSet<Operand> adjacent(Operand n)
    {
        HashSet<Operand> ans = new HashSet<>(adj_list.get(n));
        select_stack.forEach(ans::remove);
        ans.removeAll(coalesced_nodes);
        return ans;
    }

    HashSet<MvInst> node_moves(Operand n)
    {
        HashSet<MvInst> ans = new HashSet<>(active_moves);
        ans.addAll(worklist_moves);
        ans.retainAll(move_list.get(n));
        return ans;
    }

    boolean move_related(Operand n){
        return node_moves(n).size() != 0;
    }

    void simplify(){
        Operand n = simplify_nodes.iterator().next();
        simplify_nodes.remove(n);
        select_stack.push(n);
        adjacent(n).forEach(this::decrement_degree);
    }

    void decrement_degree(Operand m){
        int d = degree.get(m);
        degree.replace(m,d - 1);
        if(d == K){
            HashSet<Operand> tmp = new HashSet<>(adjacent(m));
            tmp.add(m);
            enable_moves(tmp);
            spill_nodes.remove(m);
            if(move_related(m)){
                freeze_nodes.add(m);
            }else simplify_nodes.add(m);
        }
    }

    void enable_moves(HashSet<Operand> nodes){
        nodes.forEach(n -> {
            node_moves(n).forEach(m -> {
                if(active_moves.contains(m)){
                    active_moves.remove(m);
                    worklist_moves.add(m);
                }
            });
        });
    }

    void coalesce(){
        MvInst m = worklist_moves.iterator().next();
        Operand x = get_alias(m.rd);
        Operand y = get_alias(m.rs);
        assert x != null && y != null;


        Operand u,v;
        if(precolored_nodes.contains(y)){
            u = y;
            v = x;
        }else {
            u = x;
            v = y;
        }
        worklist_moves.remove(m);
        if(u == v){
            coalesced_moves.add(m);
            add_worklist(u);
        }else if(precolored_nodes.contains(v) || adj_set.contains(new Pair<>(u,v)) || u == AsmModule.regs.get(0) || v == AsmModule.regs.get(0)){// uv 冲突 不能合并
            constrained_moves.add(m);
            add_worklist(u);
            add_worklist(v);
        }else {


            boolean flag1 = precolored_nodes.contains(u);
            boolean flag3 = !flag1;
            boolean flag2 = true,flag4;
            for(Operand t : adjacent(v)){
                if(!OK(t,u))flag2 = false;
            }
//            adjacent(v).forEach(t -> {
//                flag2 &= OK(t,u);
//            });
            HashSet<Operand> tmp = adjacent(u);
            tmp.addAll(adjacent(v));
            flag4 = conservative(tmp);

            if((flag1 && flag2) || (flag3 && flag4)){
                coalesced_moves.add(m);
                combine(u,v);
                add_worklist(u);
            }else active_moves.add(m);

        }
    }

    void add_worklist(Operand u){
        if(!precolored_nodes.contains(u) && !move_related(u) && degree.get(u) < K){
            freeze_nodes.remove(u);
            simplify_nodes.add(u);
        }
    }
    //george
    boolean OK(Operand t, Operand r){
        return degree.get(t) < K || precolored_nodes.contains(t) || adj_set.contains(new Pair<>(t,r));
    }

    boolean conservative(HashSet<Operand> nodes){
        int k = 0;
        for(Operand n : nodes){
            if(degree.get(n) >= K)k++;
        }
        return  k < K;
    }

    Operand get_alias(Operand n){
        if(coalesced_nodes.contains(n)){
            assert alias.get(n) != null;
            return get_alias(alias.get(n));
        }else return n;
    }

    void combine(Operand u, Operand v){
        if(freeze_nodes.contains(v))freeze_nodes.remove(v);
        else spill_nodes.remove(v);
        coalesced_nodes.add(v);
        alias.replace(v,u);
        move_list.get(u).addAll(move_list.get(v));
        HashSet<Operand> v_ = new HashSet<>();
        v_.add(v);
        enable_moves(v_);
        adjacent(v).forEach(t -> {
            add_edge(t,u);
            decrement_degree(t);
        });
        if(degree.get(u) >= K && freeze_nodes.contains(u)){
            freeze_nodes.remove(u);
            spill_nodes.add(u);
        }

    }

    void freeze(){
        Operand u = freeze_nodes.iterator().next();
        freeze_nodes.remove(u);
        simplify_nodes.add(u);
        freeze_moves(u);
    }

    void freeze_moves(Operand u){
        for(var m : node_moves(u)){
            Operand v;
            if(get_alias(m.rs) == get_alias(u))v = get_alias(m.rd);
            else v = get_alias(m.rs);
            active_moves.remove(m);
            frozen_moves.add(m);
            if(node_moves(v).size() == 0 && degree.get(v) < K){
                freeze_nodes.remove(v);
                simplify_nodes.add(v);
            }
        }
    }

    void select_spill(){
        double min = Double.POSITIVE_INFINITY;
        Operand spill = null;
        for(var reg : spill_nodes){
            if(degree.get(reg) != 0){
                double val = 1.0 * val_map.get(reg) / degree.get(reg);
                if (val < min){
                    min = val;
                    spill = reg;
                }
            }
        }
        spill_nodes.remove(spill);
        simplify_nodes.add(spill);
        freeze_moves(spill);
    }

    void assign_color(){
        while(!select_stack.empty()){
            Operand n = select_stack.pop();
            ArrayList<Integer> ok_colors = new ArrayList<>();
            for (int i = 0; i < 32; i++) {
                if (i == 0 || i == 2 || i == 3 || i == 4 || i == 8) continue;
                else ok_colors.add(i);
            }
//            if(Objects.equals(curfunction.func_name, "classSlice_int_tail")){
//                System.out.println(1);
//            }
            for(var w : adj_list.get(n)){
//                if(w instanceof  VirtReg && Objects.equals(((VirtReg) w).identifier, "VirtReg_11")){
//                   // System.out.println(1);
//                }
                if(colored_nodes.contains(get_alias(w)) || precolored_nodes.contains(get_alias(w))){
                   // System.out.println(get_alias(w));
//                                if(Objects.equals(curfunction.func_name, "classSlice_int_tail")) {
//                                    System.out.println(1);
//                                }
                    ok_colors.remove(color.get(get_alias(w)));
                }
            }
            if(ok_colors.size() == 0){
                spilled_nodes.add(n);
            }else {
                colored_nodes.add(n);
                int c = -1;
                for(int i : ok_colors) {
                    if (AsmModule.type_list.get(i) == 0) {
                        c = i;
                        break;
                    }
                }

                if(c == -1)c = ok_colors.iterator().next();
                //System.out.println(c);
                color.put(n,c);
            }


        }
        for(var n : coalesced_nodes){
            color.put(n, color.get(get_alias(n)));
        }
    }



    void rewrite_programme(AsmFunc function){
        new_temps = new ArrayList<>();
        for(var n : spilled_nodes){
            assert n instanceof VirtReg;
            VirtReg reg = (VirtReg) n;
            if(!function.reg_offset.containsKey(reg)){
                function.offset += reg.size;
                function.reg_offset.put(reg,function.offset);
            }
        }

        for(var block : function.asmblocks){
            for(Inst cur = block.head ; cur != null; cur = cur.next){

                ArrayList<Operand> def = new ArrayList<>();
                for(var x : new ArrayList<>(cur.def)){
                    if(spilled_nodes.contains(x)){
                        VirtReg reg = (VirtReg) x;
                        VirtReg v = new VirtReg(function.cur_reg_id++, reg.size);
                        cur.change(x,v);
                        def.add(v);
                        new_temps.add(v);
//                        if(!function.reg_offset.containsKey(reg)){
//                            function.offset += v.size;
//                            function.reg_offset.put(reg, function.offset);
//                        }

                        int imm = -function.reg_offset.get(reg);

                        if(imm >= -2048 && imm < 2048){
                            block.insert_after(cur,new StoreInst(v.size,v,s0,new Imm(imm)));
                            // System.out.println(4);
                            //block.insert_after(cur,new StoreInst(v.size,s0,v,new Imm(imm)));
                        }
                        else {
                            VirtReg t = new VirtReg(function.cur_reg_id++, 4);
                            block.insert_after(cur,new StoreInst(v.size,v,t,new Imm(0)));
                            block.insert_after(cur,new CalcRInst(CalcRInst.RType.add,s0,t,t));
                            block.insert_after(cur, new LiInst(t, new Imm(imm)));
                        }
                    }else {

                        def.add(x);
                    }
                }
                //cur.push_def(def);
                ArrayList<Operand> use = new ArrayList<>();
                for(var x : new ArrayList<>(cur.use)){

                    if(spilled_nodes.contains(x)){
                        VirtReg reg = (VirtReg) x;
                        VirtReg v = new VirtReg(function.cur_reg_id++, reg.size);
                        use.add(v);
                        cur.change(x,v);
                        new_temps.add(v);
//                        if(!function.reg_offset.containsKey(reg)){
//                            function.offset += v.size;
//                            function.reg_offset.put(reg, function.offset);
//                        }

                        int imm = -function.reg_offset.get(reg);
                        if(Objects.equals(function.func_name, "classvector_scalarInPlaceMultiply")){
                            //System.out.println(1);
                        }
                        if(imm >= -2048 && imm < 2048){
                            block.insert_before(cur,new LoadInst(v.size,v,s0,new Imm(imm)));
                        }
                        else {
                            block.insert_before(cur,new LiInst(v,new Imm(imm)));
                            block.insert_before(cur, new CalcRInst(CalcRInst.RType.add,s0,v,v));
                            block.insert_before(cur, new LoadInst(v.size,v,v,new Imm(0)));
                        }
                    }else {
                        //cur.change(x,x);
                        use.add(x);
                    }
                }
                // cur.push_use(use);
            }
        }

        spilled_nodes = new HashSet<>();
        initial_nodes = colored_nodes;
        initial_nodes.addAll(coalesced_nodes);
        initial_nodes.addAll(new_temps);
        colored_nodes = new HashSet<>();
        coalesced_nodes = new HashSet<>();


    }

    void Main(AsmFunc function){
        curfunction = function;
        precolored_nodes = new HashSet<>();
        initial_nodes = new HashSet<>();
        simplify_nodes = new HashSet<>();
        freeze_nodes = new HashSet<>();
        spill_nodes = new HashSet<>();
        spilled_nodes = new HashSet<>();
        coalesced_nodes = new HashSet<>();
        colored_nodes = new HashSet<>();
        select_stack = new Stack<>();

        coalesced_moves = new HashSet<>();
        constrained_moves = new HashSet<>();
        frozen_moves = new HashSet<>();
        worklist_moves = new HashSet<>();
        active_moves = new HashSet<>();

        adj_set = new HashSet<>();
        adj_list = new HashMap<>();
        degree = new HashMap<>();
        move_list = new HashMap<>();
        alias = new HashMap<>();
        color = new HashMap<>();

        val_map = new HashMap<>();
//
        for(var block : function.asmblocks){
            for(Inst cur = block.head; cur != null ; cur = cur.next){
                initial_nodes.addAll(cur.def);
                initial_nodes.addAll(cur.use);
            }
        }

        for(int i = 0 ; i < 32 ; i++){
            precolored_nodes.add(AsmModule.regs.get(i));
            color.put(AsmModule.regs.get(i),i);
        }

        if(Objects.equals(function.func_name, "classSlice_int_copy")){
            //System.out.println(1);
        }

        for(var reg : initial_nodes){
            adj_list.put(reg,new HashSet<>());
            move_list.put(reg,new HashSet<>());
            degree.put(reg,0);
            alias.put(reg,null);
            if(precolored_nodes.contains(reg)){
                val_map.put(reg,Integer.MAX_VALUE);
                degree.replace(reg,Integer.MAX_VALUE);
            }else val_map.put(reg,0);
        }
        initial_nodes.removeAll(precolored_nodes);

        liveness_analyse(function);

        build(function);

        make_worklist();

        while(true){
            if (!simplify_nodes.isEmpty())
                simplify();
            else if (!worklist_moves.isEmpty())
                coalesce();
            else if (!freeze_nodes.isEmpty())
                freeze();
            else if (!spill_nodes.isEmpty())
                select_spill();
            else
                break;
        }
        // System.out.println(color.get(ra));
        assign_color();
        // System.out.println(color.get(ra));
        if(!spilled_nodes.isEmpty()){
            rewrite_programme(function);
            Main(function);
        }else{
            function.asmblocks.forEach(this::practical_coloring);
        }
    }

    void practical_coloring(AsmBlock block){
        for(Inst cur = block.head; cur != null ; cur = cur.next){
            ArrayList<Operand> def = new ArrayList<>();
            for(var reg : new ArrayList<>(cur.def)){
                if(reg instanceof VirtReg){
                    if (color.containsKey(reg) && color.get(reg) != null)
                        cur.change((VirtReg)reg,AsmModule.regs.get(color.get(reg)));
                }

            }
            ArrayList<Operand> use = new ArrayList<>();
            for(var reg : new ArrayList<>(cur.use)){
                if(reg instanceof VirtReg){
                    if (color.containsKey(reg) && color.get(reg) != null)
                        cur.change((VirtReg)reg,AsmModule.regs.get(color.get(reg)));
                }
            }
        }
    }
//    void practical_coloring(AsmBlock block){
//        for(Inst cur = block.head; cur != null ; cur = cur.next){
//            ArrayList<Operand> def = new ArrayList<>();
//            for(var reg : new ArrayList<>(cur.def)){
//                if(!precolored_nodes.contains(reg)){
//                    def.add(AsmModule.regs.get(color.get(get_alias(reg))));
//                }else def.add(reg);
//
//            }
//            cur.push_def(def);
//            ArrayList<Operand> use = new ArrayList<>();
//            for(var reg : new ArrayList<>(cur.use)){
//                if(!precolored_nodes.contains(reg)){
//                    use.add(AsmModule.regs.get(color.get(get_alias(reg))));
//                }else use.add(reg);
//            }
//            cur.push_use(use);
//        }
//    }



    void run(){
        top_module.functions.forEach(fn -> {
            ArrayList<Operand> t = new ArrayList<>();
            VirtReg tmp0 = new VirtReg(fn.cur_reg_id++,4);
            t.add(tmp0);
            AsmBlock head = fn.asmblocks.get(0);
            head.push_front(new MvInst(t.get(t.size() - 1),AsmModule.callee.get(0)));
            for(int i = 1 ; i < AsmModule.callee.size() ;i++){
                VirtReg tmpi = new VirtReg(fn.cur_reg_id++,4);
                t.add(tmpi);
                head.insert_after(head.head,new MvInst(t.get(t.size() -1 ),AsmModule.callee.get(i)));
            }
            AsmBlock tail = fn.asmblocks.size() == 0 ? head : fn.asmblocks.get(fn.asmblocks.size() - 1);

            assert AsmModule.callee.size() == t.size();

            for (int i = t.size() - 1; i >= 0; i--)
                if(tail.tail == null)tail.push_front(new MvInst(AsmModule.callee.get(i), t.get(i)));
                else tail.insert_before(tail.tail, new MvInst(AsmModule.callee.get(i), t.get(i)));
                //tail.insert_before(tail.tail, new MvInst(AsmModule.callee.get(i), t.get(i)));

//            for (int i = t.size() - 2; i >= 0; i--)
//                tail.insert_before(tail.tail, new MvInst(AsmModule.callee.get(i), t.get(i)));


            Main(fn);
            process_func(fn);
            //System.out.println(fn.func_name);


        });
    }





}
