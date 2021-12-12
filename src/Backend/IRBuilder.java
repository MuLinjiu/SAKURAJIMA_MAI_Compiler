package Backend;

import AST.*;
import MIR.*;
import Util.*;
import Util.Type.Type_kind;
import org.antlr.v4.runtime.Parser;

import java.util.ArrayList;
import java.util.Objects;

public class IRBuilder implements ASTvisitor{
    private Global_def global_def;
    private ArrayList<block> flow_collector = new ArrayList<>();
    private ArrayList<block> return_collector = new ArrayList<>();
    private block currentblock;
    private mainFn mainfn;
    private Scope currentScope;
    private function curfunction;
    private globalScope gScope;
    private entity returnentity;
    private String global_return_value;

    //private IRTYPE type;

    private boolean need_copy;


    public void type_transfer(entity from, entity to){
        int from_w = ((INT_TYPE)((register)from).type).width;
        int to_w = ((INT_TYPE)((register)to).type).width;

        if(from_w > to_w){
            currentblock.push_back(new trunc(((register)from).type,((register)to).type,from,to));
        }else if(from_w < to_w){
            currentblock.push_back(new zext(((register)from).type,((register)to).type,from,to));
        }
    }

    public boolean compare(BinaryExprNode.binarysign op){
        return op == BinaryExprNode.binarysign.GREATER || op == BinaryExprNode.binarysign.GREATER_E || op == BinaryExprNode.binarysign.LESS ||
                op == BinaryExprNode.binarysign.LESS_E || op == BinaryExprNode.binarysign.EQUAL || op == BinaryExprNode.binarysign.NOT_EQUAL;
    }

    public boolean aritnmatic(BinaryExprNode.binarysign op){
        return !compare(op) && op != BinaryExprNode.binarysign.ASSIGN && op != BinaryExprNode.binarysign.AND_AND && op != BinaryExprNode.binarysign.OR_OR && op != BinaryExprNode.binarysign.DOT;
    }


    public boolean ifgloabl = false;
//    private int var_num;
//    private int return_value_int;
//    private boolean return_type_is_identifier;

    public IRBuilder(Global_def global_def_, globalScope globalscope){
        //currentblock = currentblock_;
        global_def = global_def_;
        //currentScope = scope;
        gScope = globalscope;
        currentScope = globalscope;
        need_copy = true;
        //currentblock = mainfn.rootBlock;
        //returntype = type_;
        //var_num = 0;
    }

    public IRTYPE type_to_irtype(Type type){
        IRTYPE irtype_;
        if(type.Type_name == Type_kind.INT){
            irtype_ = new INT_TYPE(32);
            //System.out.println(32);
        }else if(type.Type_name == Type_kind.BOOL){
            irtype_ = new INT_TYPE(8);
            //System.out.println(8);
        }else irtype_ = new INT_TYPE(32);
        return irtype_;
    }

    @Override
    public void visit(RootNode it) {
        // TODO Auto-generated method stub
        it.defNodes.forEach(x -> {
            x.accept(this);
        });
        
    }

    @Override
    public void visit(ArrayExprNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(BackPLUSMINUSExpr it) {
        // TODO Auto-generated method stub
        it.lhs.accept(this);
        entity ret = returnentity;//a load出来
        if(it.sign == BackPLUSMINUSExpr.backsign.MINUS_MINUS){//--a
            register tmpreg = new register(curfunction.register_id++, ((register)returnentity).type);//a = a - 1, a - 1暂存的reg
            currentblock.push_back(new binary(((register)returnentity).type,ret,new constant(-1, constant.constant_op.INT),tmpreg, binary.opType.add));
            entity e = currentScope.getEntity(((BasicExprNode)it.lhs).contex,true);
            currentblock.push_back(new store(tmpreg,e,((register)returnentity).type));
            //returnentity = tmpreg;
        }else{//++a
            register tmpreg = new register(curfunction.register_id++, ((register)returnentity).type);//a = a - 1, a - 1暂存的reg
            currentblock.push_back(new binary(((register)returnentity).type,ret,new constant(1, constant.constant_op.INT),tmpreg, binary.opType.add));
            entity e = currentScope.getEntity(((BasicExprNode)it.lhs).contex,true);
            currentblock.push_back(new store(tmpreg,e,((register)returnentity).type));
            //returnentity = tmpreg;
        }
        
    }


//    @Override
//    public void visit(StmtNode it) {
//
//    }

    @Override
    public void visit(BasicExprNode it) {
        // TODO Auto-generated method stub
    //System.out.println("");
        if(it.opt == BasicExprNode.option.INT){
            returnentity = new constant(Integer.parseInt(it.contex), constant.constant_op.INT);
            if(ifgloabl)global_return_value = it.contex;
        } else if(it.opt == BasicExprNode.option.BOOL){
            if(Objects.equals(it.contex, "true")){
                returnentity = new constant(1, constant.constant_op.BOOLi8);
                if(ifgloabl)global_return_value = "1";
            }else {
                returnentity = new constant(0, constant.constant_op.BOOLi8);
                if(ifgloabl)global_return_value = "0";
            }
        } else {
            if(it.opt == BasicExprNode.option.Identifier){
                if(!ifgloabl) {
                    entity varentity = currentScope.getEntity(it.contex, true);//读出的地方
                    IRTYPE irtype_ = ((register) varentity).type;
                    //returnentity = varentity;/////////////
                    if(need_copy) {
                        returnentity = new register((curfunction.register_id), irtype_);
                        currentblock.push_back(new load(irtype_, varentity, new register(curfunction.register_id++, irtype_)));

                    }else{
                        returnentity = varentity;
                    }

                    }else{
// init 函数
                }
            }
        }
//        if(it.opt == BasicExprNode.option.THIS){
//            returnentity = new constant();
//        }
//        else if(it.opt == BasicExprNode.option.NULL){
//            returntype = new Type(Type.Type_kind.NULL,0,false);
//        }
//        else if(it.opt == BasicExprNode.option.INT){
//            returntype = new Type(Type.Type_kind.INT,0,false);
//            return_value_int = Integer.parseInt(it.contex);
//        }
//        else if(it.opt == BasicExprNode.option.BOOL){
//            returntype = new Type(Type.Type_kind.BOOL,0,false);
//            return_value_int = (!Objects.equals(it.contex, "0") && !Objects.equals(it.contex, "false"))?1:0;
//        }
//        else if(it.opt == BasicExprNode.option.STRING){
//            returntype = new Type(Type.Type_kind.STRING,0,false);
//        }
//        else if(it.opt == BasicExprNode.option.Identifier){
//            returntype = new Type(Type_kind.Identifier,0,false,it.contex);
//        }
//        else {
//            returntype = new Type(Type_kind);
//            if(fucid){
//                Type type = globalscope.getretTypefromfuc(it.pos,it.contex);
//                ArrayList<Type> parameter = globalscope.getparameterlistfromfuc(it.pos,it.contex);
//
//            }else {
//                retType = new Type(currentscope.getType(it.pos,it.contex,true));
//            }
//        }
    }

    @Override
    public void visit(BasicTypeNode it) {
        // TODO Auto-generated method stub
    }

    @Override
    public void visit(BinaryExprNode it) {
        // TODO Auto-generated method stub
        if(compare(it.sign)){
            it.lhs.accept(this);
            Type lhs_type = it.lhs.type;
            entity left = returnentity;
            it.rhs.accept(this);
            Type rhs_type = it.rhs.type;
            entity right = returnentity;

            if(lhs_type.Type_name == Type_kind.INT){
                //还需加global or not
                currentblock.push_back(new binary(type_to_irtype(lhs_type),left,right,new register(curfunction.register_id,type_to_irtype(lhs_type)), binary.opType.values()[it.sign.ordinal()]));
                curfunction.register_id++;
                returnentity = new register(curfunction.register_id - 1,new INT_TYPE(1));
            }//String left
        }else if(aritnmatic(it.sign)){
            it.lhs.accept(this);
            Type lhs_type = it.lhs.type;
            entity left = returnentity;
            it.rhs.accept(this);
            Type rhs_type = it.rhs.type;
            entity right = returnentity;

            if(lhs_type.Type_name == Type_kind.INT){
                //还需加global or not
                currentblock.push_back(new binary(type_to_irtype(lhs_type),left,right,new register(curfunction.register_id,type_to_irtype(lhs_type)), binary.opType.values()[it.sign.ordinal()]));
                curfunction.register_id++;
                returnentity = new register(curfunction.register_id - 1,type_to_irtype(lhs_type));
            }//String left
        } else if(it.sign == BinaryExprNode.binarysign.ASSIGN){
            need_copy = false;
            it.lhs.accept(this);
            Type lhs_type = it.lhs.type;
            entity left = returnentity;
            need_copy = true;
            it.rhs.accept(this);
            Type rhs_type = it.rhs.type;
            entity right = returnentity;
            if(lhs_type != rhs_type && right instanceof register){
                register reg = new register(curfunction.register_id++,type_to_irtype(lhs_type));
                type_transfer(right,reg);

                right = reg;
            }
            currentblock.push_back(new store(right,left,type_to_irtype(lhs_type)));
            returnentity = right;
        } else if(it.sign == BinaryExprNode.binarysign.AND_AND){

        }else if(it.sign == BinaryExprNode.binarysign.OR_OR){

        }else if(it.sign == BinaryExprNode.binarysign.DOT){

        }
    }

    @Override
    public void visit(BlockNode it) {
        // TODO Auto-generated method stub
        if(it.suiteNode != null) {
            currentScope = new Scope(currentScope);
            it.suiteNode.accept(this);
            currentScope = currentScope.parentScope();
        }
        if(it.stmtNode != null){
            if(currentblock.flow_type == null)it.stmtNode.accept(this);
        }



    }

    @Override
    public void visit(BracketExprNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(BreakNode it) {
        // TODO Auto-generated method stub
        currentblock.flow_type = block.Flow_Type.BREAK;
        
    }

    @Override
    public void visit(ClassDefNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(ConstruDefNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(ContinueNode it) {
        // TODO Auto-generated method stub
        currentblock.flow_type = block.Flow_Type.CONTINUE;
    }

    @Override
    public void visit(ElseStmtNode it) {
        // TODO Auto-generated method stub
        it.suite_stmtNode.accept(this);

        
    }

    @Override
    public void visit(ForfinishNode it) {
        // TODO Auto-generated method stub
        it.exprNode.accept(this);
    }

    @Override
    public void visit(ForstartNode it) {
        // TODO Auto-generated method stub
        if(it.exprNode != null)it.exprNode.accept(this);
        else if(it.varDefNode != null)it.varDefNode.accept(this);
    }

    @Override
    public void visit(ForStmtNode it) {
        // TODO Auto-generated method stub
        ArrayList<block> flow_collector_orgin = flow_collector;
        flow_collector = new ArrayList<>();


        currentScope = new Scope(currentScope);//
        it.forstartNode.accept(this);//init
        //currentScope = currentScope.parentScope();放最后

        label for_condition_label = new label(curfunction.register_id++);
        block for_condition_block = new block(Integer.toString(curfunction.register_id - 1));

        branch init_branch = new branch(for_condition_label);
        currentblock.push_back(init_branch);

        currentblock = for_condition_block;
        curfunction.blocks.add(for_condition_block);
        it.forfinishNode.accept(this);
        block for_condition_block_ = currentblock;
        entity conditon_entity = returnentity;

        label for_contains_label = new label(curfunction.register_id++);
        block for_contains_block = new block(Integer.toString(curfunction.register_id - 1));

        currentblock = for_contains_block;
        curfunction.blocks.add(for_contains_block);
        it.suite_stmtNode.accept(this);
        block for_contains_block_ = currentblock;

        label for_end_label = new label(curfunction.register_id++);
        block for_end_block = new block(Integer.toString(curfunction.register_id - 1));

        curfunction.blocks.add(for_end_block);
        block for_end_block_ = for_end_block;
        if(it.exprNode != null){
            currentblock = for_end_block;
            it.exprNode.accept(this);
            for_end_block_ = currentblock;
        }

        label for_out_label = new label(curfunction.register_id++);
        block for_out_block = new block(Integer.toString(curfunction.register_id - 1));

        for_condition_block_.push_back(new branch(for_contains_label,for_out_label,conditon_entity));
//        curfunction.blocks.add(for_condition_block);

        if(for_condition_block_.flow_type == null){
            for_contains_block_.push_back(new branch(for_end_label));
        }else{
            if(for_condition_block_.flow_type == block.Flow_Type.RETURN){
                flow_collector.add(for_contains_block_);
                return_collector.add(for_condition_block_);
            }
            else flow_collector.add(for_contains_block_);
        }
//        curfunction.blocks.add(for_contains_block);

        for_end_block_.push_back(new branch(for_condition_label));

        currentblock = for_out_block;

        curfunction.blocks.add(for_out_block);

        flow_collector.forEach(x -> {
            if(x.flow_type == block.Flow_Type.BREAK){
                x.push_back(new branch(for_out_label));
            }else if(x.flow_type == block.Flow_Type.CONTINUE){
                x.push_back(new branch(for_contains_label));
            }
        });
        currentScope = currentScope.parentScope();// zuihou
        flow_collector = flow_collector_orgin;
    }

    @Override
    public void visit(FucDefNode it) {
        // TODO Auto-generated method stub
        function func = new function(it.name);
        curfunction = func;
        global_def.functions.add(func);
        int id = curfunction.register_id;
        if(it.fucTypeNode.void_or_not){
            func.ret_ = new ret();
        }else {
            it.fucTypeNode.typeNode.accept(this);
            IRTYPE irtype;
            if(((constant)returnentity).op == constant.constant_op.INT){
                irtype = new INT_TYPE(32);
            }else if(((constant)returnentity).op == constant.constant_op.BOOLi1){
                irtype = new INT_TYPE(1);
            }else{
                irtype = new INT_TYPE(32);//初始化而已，string class等要改
            }
            register reg = new register(curfunction.register_id++, irtype);
            func.ret_ = new ret(reg,irtype);
            func.rootblock.push_back(new alloca(reg,irtype));
        }
        currentblock = func.rootblock;

        ArrayList<block>return_collector_origin = return_collector;
        return_collector = new ArrayList<>();

        currentScope = gScope.getscopefromfuc(it.pos,it.name);
        it.suiteNode.accept(this);
        currentScope = currentScope.parentScope();

//        if(it.fucTypeNode.void_or_not){
//
//        }
//        else {
            return_collector.forEach(x -> {
                x.push_back(new branch(new label(Integer.parseInt(currentblock.Identifier))));
            });
//        }
        register r = new register(curfunction.register_id++,curfunction.ret_.irtype);
        currentblock.push_back(new load(curfunction.ret_.irtype,new register(id,curfunction.ret_.irtype),r));
        curfunction.ret_ = new ret(r,curfunction.ret_.irtype);
        return_collector = return_collector_origin;
    }

    @Override
    public void visit(FucTypeNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(Global_var_define_youfen it) {
        // TODO Auto-generated method stub
        ifgloabl = true;
        it.varDefNode.accept(this);
        ifgloabl = false;
    }

    @Override
    public void visit(HanshuDiaoyongExprNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(IfStmtNode it) {
        // TODO Auto-generated method stub
        it.exprNode.accept(this);
        if(returnentity instanceof register && ((INT_TYPE)((register)returnentity).type).width != 1){
            register i1 = new register(curfunction.register_id++,new INT_TYPE(1));
            type_transfer(returnentity,i1);
            returnentity = i1;
        }
        //保证已经为i1

        label true_label = new label(curfunction.register_id++);
        if(it.elseStmtNode != null) {// if else

            block true_block = new block(Integer.toString(curfunction.register_id - 1));
            curfunction.blocks.add(true_block);

            block ori_current_block = currentblock;

            currentblock = true_block;
            currentScope = new Scope(currentScope);

            it.suite_stmtNode.accept(this);
            block true_block_ = currentblock;
            currentScope = currentScope.parentScope();

            label false_label = new label(curfunction.register_id++);
            block false_block = new block(Integer.toString(curfunction.register_id - 1));
            curfunction.blocks.add(false_block);

            currentblock = false_block;
            currentScope = new Scope(currentScope);
            it.elseStmtNode.accept(this);
            block false_block_ = currentblock;
            currentScope = currentScope.parentScope();
            //label outif = new label(curfunction.register_id++);
            branch branch_ = new branch(true_label,false_label,returnentity);//dizhi

            ori_current_block.push_back(branch_);

            label outif = new label(curfunction.register_id++);
            block outif_block = new block(Integer.toString(curfunction.register_id - 1));
            curfunction.blocks.add(outif_block);

            if(true_block_.flow_type == null){
                true_block_.push_back(new branch(outif));
            }else {
                if(true_block_.flow_type == block.Flow_Type.RETURN){
                    flow_collector.add(true_block_);
                    return_collector.add(true_block_);
                }
                else flow_collector.add(true_block_);
            }
            if(false_block_.flow_type == null){
                false_block_.push_back(new branch(outif));
            }else {
                if(false_block_.flow_type == block.Flow_Type.RETURN){
                    flow_collector.add(false_block_);
                    return_collector.add(false_block_);
                }
                else flow_collector.add(false_block_);
            }

            currentblock = outif_block;

        }else{
            block ori_current_block = currentblock;
            block true_block = new block(Integer.toString(curfunction.register_id - 1));
            curfunction.blocks.add(true_block);

            currentScope = new Scope(currentScope);
            currentblock = true_block;
            it.suite_stmtNode.accept(this);
            block true_block_ = currentblock;
            currentScope = currentScope.parentScope();



            label false_label = new label(curfunction.register_id++);
            block false_block = new block(Integer.toString(curfunction.register_id - 1));
            curfunction.blocks.add(false_block);

            branch branch_ = new branch(true_label,false_label,returnentity);//dizhi
//            true_block.push_back(branch_);
//            false_block.push_back(branch_);
            ori_current_block.push_back(branch_);

            if(true_block_.flow_type == null){
                true_block_.push_back(new branch(false_label));
            }else {
                if(true_block_.flow_type == block.Flow_Type.RETURN){
                    flow_collector.add(true_block_);
                    return_collector.add(true_block_);
                }
                else flow_collector.add(true_block_);
            }



            currentblock = false_block;

//            currentScope = new Scope(currentScope);
//            currentblock = true_block;
//            it.suite_stmtNode.accept(this);
//            currentblock.push_back(new branch(false_label));//跳转到false
//            currentScope = currentScope.parentScope();
//            curfunction.blocks.add(true_block);
//
//            curfunction.blocks.add(false_block);
//            currentblock = false_block;

        }







        
    }

    @Override
    public void visit(LambadaExprNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(NewerNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(ParameterNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(ParameterListNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(PrePLUSMINUSExpr it) {
        // TODO Auto-generated method stub
        it.rhs.accept(this);
        entity ret = returnentity;//a load出来
        if(it.sign == PrePLUSMINUSExpr.presign.MINUS_MINUS){//--a
            register tmpreg = new register(curfunction.register_id++, ((register)returnentity).type);//a = a - 1, a - 1暂存的reg
            currentblock.push_back(new binary(((register)returnentity).type,ret,new constant(-1, constant.constant_op.INT),tmpreg, binary.opType.add));
            entity e = currentScope.getEntity(((BasicExprNode)it.rhs).contex,true);
            currentblock.push_back(new store(tmpreg,e,((register)returnentity).type));
            returnentity = tmpreg;
        }else{//++a
            register tmpreg = new register(curfunction.register_id++, ((register)returnentity).type);//a = a - 1, a - 1暂存的reg
            currentblock.push_back(new binary(((register)returnentity).type,ret,new constant(1, constant.constant_op.INT),tmpreg, binary.opType.add));
            entity e = currentScope.getEntity(((BasicExprNode)it.rhs).contex,true);
            currentblock.push_back(new store(tmpreg,e,((register)returnentity).type));
            returnentity = tmpreg;
        }
        
    }

    @Override
    public void visit(ReturnNode it) {
        // TODO Auto-generated method stub
        if(it.expr == null){//void

        }else{
            it.expr.accept(this);
        }
        currentblock.flow_type = block.Flow_Type.RETURN;
        if(it.expr != null)currentblock.push_back(new store(returnentity,curfunction.ret_.reg,curfunction.ret_.irtype));
        //return_collector.add(currentblock);
        
    }

    @Override
    public void visit(Sentence_ListNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(Suite_StmtNode it) {
        // TODO Auto-generated method stub
        if(it.suiteNode != null) {
            currentScope = new Scope(currentScope);
            it.suiteNode.accept(this);
            currentScope = currentScope.parentScope();
        }
        if(it.stmtNode != null){
            if(currentblock.flow_type == null)it.stmtNode.accept(this);
        }
    }

    @Override
    public void visit(SuiteNode it) {
        // TODO Auto-generated method stub
        it.blockNodes.forEach(x -> {
            x.accept(this);
        });
        
    }

    @Override
    public void visit(TypeNode it) {
        // TODO Auto-generated method stub
        if(it.basicTypeNode != null){
            if(it.basicTypeNode.basicType == Type_kind.INT){
                returnentity = new constant(0, constant.constant_op.INT);
            }else if(it.basicTypeNode.basicType == Type_kind.BOOL){
                returnentity = new constant(0,constant.constant_op.BOOLi1);
            }else {//string

            }
            //zhizhen
        }//class
    }

    @Override
    public void visit(UnaryExprNode it) {
        // TODO Auto-generated method stub
        if(it.sign == UnaryExprNode.unarysign.ADD){
            it.expr.accept(this);
        }else if(it.sign == UnaryExprNode.unarysign.MINUS){
            it.expr.accept(this);
            entity ret = new register(curfunction.register_id++,((register)returnentity).type);
            currentblock.push_back(new binary(((register)returnentity).type,new constant(0, constant.constant_op.INT),returnentity,ret, binary.opType.sub));
            returnentity = ret;
        }else if(it.sign == UnaryExprNode.unarysign.NOT){
            it.expr.accept(this);
            //类型转换

            if(returnentity instanceof register){
                entity newentity = new register(curfunction.register_id++, new INT_TYPE(1));

                type_transfer(returnentity,newentity);
                returnentity = newentity;
            }

            entity ret = new register(curfunction.register_id++,((register)returnentity).type);
            currentblock.push_back(new binary(((register)returnentity).type,new constant(1, constant.constant_op.BOOLi1),returnentity,ret, binary.opType.xor));
            returnentity = ret;
        }else {//FAN
            it.expr.accept(this);
            entity ret = new register(curfunction.register_id++,((register)returnentity).type);
            currentblock.push_back(new binary(((register)returnentity).type,new constant(-1, constant.constant_op.INT),returnentity,ret, binary.opType.xor));
            returnentity = ret;
        }
        
    }

    @Override
    public void visit(VarDefNode it) {
        it.typeNode.accept(this);
        Type ret = it.typeNode.type;
        IRTYPE irtype = type_to_irtype(ret);
//        if(ret.Type_name == Type_kind.INT){
//            irtype = new INT_TYPE(32);
//        }else if(ret.Type_name == Type_kind.BOOL){
//            irtype = new INT_TYPE(8);
//        }
//        else {//continue
//            irtype = new INT_TYPE(13);
//        }
        // TODO Auto-generated method stub
        if(!ifgloabl) {
            it.varDefSentenceNodes.forEach(x -> {
                int reg_id = curfunction.register_id;
                register reg = new register(reg_id, irtype);
                currentScope.entities.put(x.name, reg);
                currentblock.push_back(new alloca(reg, irtype));
                curfunction.register_id++;
                if (x.initialed_or_not) {
                    x.exprNode.accept(this);
                    ////////////
                    if(returnentity instanceof register){
                        type_transfer(returnentity,reg);
                    }
                    currentblock.push_back(new store(returnentity, reg, irtype));
                }
            });
        } else {//global
            it.varDefSentenceNodes.forEach(x -> {
                if(ret.Type_name == Type_kind.INT){
                    if(x.initialed_or_not){
                        x.exprNode.accept(this);//获取变量名之类
                        Global_register global_register = new Global_register(irtype,x.name);
                        gScope.entities.put(x.name,global_register);
                        global_def.global_def_stmts.add(new dso_local_global(global_register,irtype,Integer.parseInt(global_return_value)));
                    }else {
                        Global_register global_register = new Global_register(irtype,x.name);
                        gScope.entities.put(x.name,global_register);
                        global_def.global_def_stmts.add(new dso_local_global(global_register,irtype,0));
                    }
                }else if(ret.Type_name == Type_kind.BOOL){
                    if(x.initialed_or_not){
                        x.exprNode.accept(this);//获取变量名之类
                        Global_register global_register = new Global_register(irtype,x.name);
                        gScope.entities.put(x.name,global_register);
                        global_def.global_def_stmts.add(new dso_local_global(global_register,irtype,Integer.parseInt(global_return_value)));
                    }else{
                        Global_register global_register = new Global_register(irtype,x.name);
                        gScope.entities.put(x.name,global_register);
                        global_def.global_def_stmts.add(new dso_local_global(global_register,irtype,0));
                    }
                }
//                int reg_id = curfunction.register_id;
//                register reg = new register(reg_id, irtype);
//                currentScope.entities.put(x.name, reg);
//                currentblock.push_back(new alloca(reg, irtype));
//                curfunction.register_id++;
//                if (x.initialed_or_not) {
//                    x.exprNode.accept(this);
//                    ////////////
//                    currentblock.push_back(new store(returnentity, reg, irtype));
//                }
            });
        }
        
    }

    @Override
    public void visit(VarDefSentenceNode it) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void visit(WhileStmtNode it) {
        // TODO Auto-generated method stub
        ArrayList<block> flow_collector_origin = flow_collector;
        flow_collector = new ArrayList<>();

        label condition_label = new label(curfunction.register_id++);
        block condition_block = new block(Integer.toString(curfunction.register_id - 1));
        branch condition_branch = new branch(condition_label);
        currentblock.push_back(condition_branch);
        curfunction.blocks.add(condition_block);

        currentblock = condition_block;//进入condition
        it.exprNode.accept(this);
        block condition_block_ = currentblock;

        if(returnentity instanceof register && ((INT_TYPE)((register)returnentity).type).width != 1){
            register i1 = new register(curfunction.register_id++,new INT_TYPE(1));
            type_transfer(returnentity,i1);
            returnentity = i1;
        }
       // curfunction.blocks.add(condition_block);

        label true_label = new label(curfunction.register_id++);
        block true_block = new block(Integer.toString(curfunction.register_id - 1));
        curfunction.blocks.add(true_block);

        //curfunction.blocks.add();

        currentblock = true_block;
        currentScope = new Scope(currentScope);
        it.suite_stmtNode.accept(this);
        currentScope = currentScope.parentScope();
        //currentblock.push_back(new branch(condition_label));

        block bbexit = currentblock;

        label false_label = new label(curfunction.register_id++);
        block false_block = new block(Integer.toString(curfunction.register_id - 1));
        curfunction.blocks.add(false_block);

        if(bbexit.flow_type == null){
            bbexit.push_back(new branch(condition_label));
        }else{
            if(bbexit.flow_type == block.Flow_Type.RETURN){
                flow_collector.add(bbexit);
                return_collector.add(bbexit);
            }
            else flow_collector.add(bbexit);
        }

        flow_collector.forEach(x -> {
            if(x.flow_type == block.Flow_Type.BREAK){
                x.push_back(new branch(false_label));
            }else if(x.flow_type == block.Flow_Type.CONTINUE){
                x.push_back(new branch(condition_label));
            }
        });
        branch true_branch = new branch(true_label,false_label,returnentity);
        condition_block_.push_back(true_branch);

        //true_block.push_back(new branch(condition_label));
//        curfunction.blocks.add(true_block);

        currentblock = false_block;
        flow_collector = flow_collector_origin;
//        curfunction.blocks.add(false_block);




        
    }

    @Override
    public void visit(NewersizeNode newersizeNode) {
        // TODO Auto-generated method stub
        
    }
    
}
