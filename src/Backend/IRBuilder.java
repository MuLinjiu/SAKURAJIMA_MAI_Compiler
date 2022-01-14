package Backend;

import AST.*;
import MIR.*;
import Util.*;
import Util.Type.Type_kind;
import org.antlr.v4.runtime.Parser;

import javax.swing.text.html.parser.Entity;
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
    private hanshudiaoyong cur_function_call;
    private function main_func;
    private CLASS cur_class_irtype;
    private register curclass;
    private ArrayList<IRTYPE> curfunction_call_parameters = new ArrayList<>();

    //private int function_id;

    //private IRTYPE type;

    private boolean need_copy,isfunction_id,var_store_or_not;
    public boolean ifgloabl = false,ifarray = false, isclassdef = false;

//    public entity loadptr(entity ptr){
//        register val = new register()
//    }

    private void add_builtin_func(){
        ArrayList<IRTYPE> parameters = new ArrayList<>();
        function newfunc = new function("print");
        newfunc.isbuiltin = true;
        newfunc.ret_ = new ret();//缺省为void
        newfunc.returntype = new irvoidtype();
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        gScope.functionIRparameters.put("print",parameters);
        global_def.functions.add(newfunc);

        newfunc = new function("println");
        parameters = new ArrayList<>();
        newfunc.isbuiltin = true;
        newfunc.ret_ = new ret();//缺省为void
        newfunc.returntype = new irvoidtype();
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        gScope.functionIRparameters.put("println",parameters);
        global_def.functions.add(newfunc);

        parameters = new ArrayList<>();
        newfunc = new function("printInt");
        newfunc.isbuiltin = true;
        newfunc.returntype = new irvoidtype();
        newfunc.parameter_list.add(new register(newfunc.register_id++, new INT_TYPE(32)));
        parameters.add(new INT_TYPE(32));
        gScope.functionIRparameters.put("printInt",parameters);
        global_def.functions.add(newfunc);

        parameters = new ArrayList<>();
        newfunc = new function("printlnInt");
        newfunc.isbuiltin = true;
        newfunc.returntype = new irvoidtype();
        newfunc.parameter_list.add(new register(newfunc.register_id++, new INT_TYPE(32)));
        parameters.add(new INT_TYPE(32));
        gScope.functionIRparameters.put("printlnInt",parameters);
        global_def.functions.add(newfunc);

        parameters = new ArrayList<>();
        newfunc = new function("getString");
        newfunc.isbuiltin = true;
        newfunc.returntype = new ptr_type(new INT_TYPE(8));
        //newfunc.parameter_list.add(new register(newfunc.register_id++, new INT_TYPE(32)));
        gScope.functionIRparameters.put("getString",parameters);
        global_def.functions.add(newfunc);

        parameters = new ArrayList<>();
        newfunc = new function("getInt");
        newfunc.isbuiltin = true;
        newfunc.returntype = new INT_TYPE(32);
        //newfunc.parameter_list.add(new register(newfunc.register_id++, new INT_TYPE(32)));
        gScope.functionIRparameters.put("getInt",parameters);
        global_def.functions.add(newfunc);

        parameters = new ArrayList<>();
        newfunc = new function("toString");
        newfunc.isbuiltin = true;
        newfunc.returntype = new ptr_type(new INT_TYPE(8));
        newfunc.parameter_list.add(new register(newfunc.register_id++, new INT_TYPE(32)));
        parameters.add(new INT_TYPE(32));
        gScope.functionIRparameters.put("toString",parameters);
        global_def.functions.add(newfunc);

        parameters = new ArrayList<>();
        gScope = (globalScope)gScope.getscopefromclass(new position(0,0),"_ARRAY");
        newfunc = new function("size");
        newfunc.isbuiltin = true;
        newfunc.returntype = new INT_TYPE(32);
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        gScope.functionIRparameters.put("size",parameters);
        global_def.functions.add(newfunc);
        gScope = (globalScope)gScope.parentScope();

        parameters = new ArrayList<>();
        gScope = (globalScope)gScope.getscopefromclass(new position(0,0),"string");
        newfunc = new function("length");
        newfunc.isbuiltin = true;
        newfunc.returntype = new INT_TYPE(32);
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        gScope.functionIRparameters.put("length",parameters);
        global_def.functions.add(newfunc);

        parameters = new ArrayList<>();
        newfunc = new function("substring");
        newfunc.isbuiltin = true;
        newfunc.returntype = new ptr_type(new INT_TYPE(8));
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        newfunc.parameter_list.add(new register(newfunc.register_id++, new INT_TYPE(32)));
        newfunc.parameter_list.add(new register(newfunc.register_id++, new INT_TYPE(32)));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        parameters.add(new INT_TYPE(32));
        parameters.add(new INT_TYPE(32));
        gScope.functionIRparameters.put("substring",parameters);
        global_def.functions.add(newfunc);

        parameters = new ArrayList<>();
        newfunc = new function("parseInt");
        newfunc.isbuiltin = true;
        newfunc.returntype = new INT_TYPE(8);
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        gScope.functionIRparameters.put("parseInt",parameters);
        global_def.functions.add(newfunc);

        parameters = new ArrayList<>();
        newfunc = new function("string_add");
        newfunc.isbuiltin = true;
        newfunc.returntype = new ptr_type(new INT_TYPE(8));
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        gScope.functionIRparameters.put("string_add",parameters);
        global_def.functions.add(newfunc);

        parameters = new ArrayList<>();
        newfunc = new function("ord");
        newfunc.isbuiltin = true;
        newfunc.returntype = new INT_TYPE(8);
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        newfunc.parameter_list.add(new register(newfunc.register_id++, new INT_TYPE(32)));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        parameters.add(new INT_TYPE(32));
        gScope.functionIRparameters.put("ord",parameters);
        global_def.functions.add(newfunc);
        gScope = (globalScope) gScope.parentScope();

        parameters = new ArrayList<>();
        newfunc = new function("string_equal");
        newfunc.isbuiltin = true;
        newfunc.returntype = new INT_TYPE(1);
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        gScope.functionIRparameters.put("string_equal",parameters);
        global_def.functions.add(newfunc);

        parameters = new ArrayList<>();
        newfunc = new function("string_notEqual");
        newfunc.isbuiltin = true;
        newfunc.returntype = new INT_TYPE(1);
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        gScope.functionIRparameters.put("string_notEqual",parameters);
        global_def.functions.add(newfunc);

        parameters = new ArrayList<>();
        newfunc = new function("string_less");
        newfunc.isbuiltin = true;
        newfunc.returntype = new INT_TYPE(1);
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        gScope.functionIRparameters.put("string_less",parameters);
        global_def.functions.add(newfunc);

        parameters = new ArrayList<>();
        newfunc = new function("string_lessEqual");
        newfunc.isbuiltin = true;
        newfunc.returntype = new INT_TYPE(1);
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        gScope.functionIRparameters.put("string_lessEqual",parameters);
        global_def.functions.add(newfunc);

        parameters = new ArrayList<>();
        newfunc = new function("string_greater");
        newfunc.isbuiltin = true;
        newfunc.returntype = new INT_TYPE(1);
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        gScope.functionIRparameters.put("string_greater",parameters);
        global_def.functions.add(newfunc);

        parameters = new ArrayList<>();
        newfunc = new function("string_greaterEqual");
        newfunc.isbuiltin = true;
        newfunc.returntype = new INT_TYPE(1);
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        newfunc.parameter_list.add(new register(newfunc.register_id++, new ptr_type(new INT_TYPE(8))));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        parameters.add(new ptr_type(new INT_TYPE(8)));
        gScope.functionIRparameters.put("string_greaterEqual",parameters);
        global_def.functions.add(newfunc);

        parameters = new ArrayList<>();
        newfunc = new function("malloc");
        newfunc.isbuiltin = true;
        newfunc.parameter_list.add(new register(newfunc.register_id++, new INT_TYPE(64)));
        parameters.add(new INT_TYPE(64));
        newfunc.returntype = new ptr_type(new INT_TYPE(8));
        gScope.functionIRparameters.put("malloc",parameters);
        global_def.functions.add(newfunc);


    }

    public entity malloc_array(ArrayList<entity> entities, int cur, IRTYPE basetype){
        int dim = entities.size() - cur;
        IRTYPE cur_ir_type = basetype;
        for(int i = 0 ; i < dim ; i++){
            cur_ir_type = new ptr_type(cur_ir_type);
        }
        entity arraysize = entities.get(cur);
        int singlesize = ((ptr_type)cur_ir_type).irtype.size;
        register mallocsize = new register(curfunction.register_id++, new INT_TYPE(64));
        currentblock.push_back(new binary(mallocsize.type,arraysize,new constant(singlesize,new INT_TYPE(64)),mallocsize, binary.opType.mul));
        register mallocptr = new register(curfunction.register_id++, new ptr_type(new INT_TYPE(8)));
        hanshudiaoyong malloc_call = new hanshudiaoyong("malloc",mallocptr.type,mallocptr);
        malloc_call.parameters.add(mallocsize);
        currentblock.push_back(malloc_call);
        register curarrayptr = new register(curfunction.register_id++, cur_ir_type);
        currentblock.push_back(new bitcast(mallocptr,curarrayptr,curarrayptr.type));
        if(dim == 1)return curarrayptr;

        register loopvar = new register(curfunction.register_id++, new ptr_type(new INT_TYPE(32)));
        currentblock.push_back(new alloca(loopvar,new INT_TYPE(32)));
        currentblock.push_back(new store(new constant(0,new INT_TYPE(32)),loopvar,new INT_TYPE(32)));
        label conditionlabel = new label("my_" + (curfunction.register_id - 1) + "_for_condition");
        block condtion = new block(conditionlabel.label_name);

        label suitelabel = new label("my_" + (curfunction.register_id - 1) + "_for_suite");
        block suite = new block(suitelabel.label_name);

        label finishlabel = new label("my_" + (curfunction.register_id - 1) + "_for_finish");
        block finish = new block(finishlabel.label_name);

        label forourlabel = new label("my_" + (curfunction.register_id - 1) + "_for_out");
        block forour = new block(forourlabel.label_name);

        curfunction.blocks.add(condtion);
        currentblock = condtion;
        register loopvar_value = new register(curfunction.register_id++, new INT_TYPE(32));
        currentblock.push_back(new load(loopvar_value.type,loopvar,loopvar_value));
        entity cur_ = entities.get(cur);
        register cmpresvalue = new register(curfunction.register_id++, new INT_TYPE(1));
        currentblock.push_back(new binary(loopvar_value.type,loopvar_value,cur_,cmpresvalue, binary.opType.slt));
        currentblock.push_back(new branch(suitelabel,forourlabel,cmpresvalue));

        curfunction.blocks.add(suite);
        currentblock = suite;
        loopvar_value = new register(curfunction.register_id++, new INT_TYPE(32));
        currentblock.push_back(new load(loopvar_value.type,loopvar,loopvar_value));
        register nextarray_ptr = new register(curfunction.register_id++, cur_ir_type);
        getelement get_ptr = new getelement(curarrayptr,nextarray_ptr);
        get_ptr.values.add(loopvar_value);
        currentblock.push_back(get_ptr);
        entity nextarray = malloc_array(entities, cur+1, basetype);
        currentblock.push_back(new store(nextarray,nextarray_ptr,nextarray.type));
        currentblock.push_back(new branch(finishlabel));

        curfunction.blocks.add(finish);
        currentblock = finish;
        loopvar_value = new register(curfunction.register_id++, new INT_TYPE(32));
        currentblock.push_back(new load(loopvar_value.type,loopvar,loopvar_value));
        register nextloop_var_value = new register(curfunction.register_id++, new INT_TYPE(32));
        currentblock.push_back(new binary(loopvar_value.type,loopvar_value,new constant(1,new INT_TYPE(32)),nextloop_var_value,binary.opType.add));
        currentblock.push_back(new store(nextloop_var_value,loopvar,loopvar.type));
        currentblock.push_back(new branch(conditionlabel));
        curfunction.blocks.add(forour);
        currentblock = forour;

        return curarrayptr;

    }

    public void type_transfer(entity from, IRTYPE totype){
            returnentity = from;
        if(from.type instanceof INT_TYPE && totype instanceof INT_TYPE) {
            int from_w = ((INT_TYPE) ((register) from).type).width;
            int to_w = ((INT_TYPE) totype).width;
            if(from_w == to_w)return;
            register retreg = new register(curfunction.register_id++,totype);
            if (from_w > to_w) {
                currentblock.push_back(new trunc(((register) from).type, totype, from, retreg));
            } else if (from_w < to_w) {
                currentblock.push_back(new zext(((register) from).type, totype, from, retreg));
            }
            returnentity = retreg;
        }else{
//            if(from.type instanceof NULL_PTR || from.type.equals(totype)){
//                returnentity = from;
//            }else {
//                register retreg = new register(curfunction.register_id++,totype);
//                currentblock.push_back(new bitcast((register) from,retreg,totype));
//                returnentity = retreg;
//            }
        }
    }

    private IRTYPE toIRArrayType (IRTYPE irtype, int dim) {
        IRTYPE cur = irtype;
        for (int i = 1; i <= dim; i++){
            IRTYPE next = new ptr_type(cur);
            cur = next;
        }
        return cur;
    }


    public boolean compare(BinaryExprNode.binarysign op){
        return op == BinaryExprNode.binarysign.GREATER || op == BinaryExprNode.binarysign.GREATER_E || op == BinaryExprNode.binarysign.LESS ||
                op == BinaryExprNode.binarysign.LESS_E || op == BinaryExprNode.binarysign.EQUAL || op == BinaryExprNode.binarysign.NOT_EQUAL;
    }

    public boolean aritnmatic(BinaryExprNode.binarysign op){
        return !compare(op) && op != BinaryExprNode.binarysign.ASSIGN && op != BinaryExprNode.binarysign.AND_AND && op != BinaryExprNode.binarysign.OR_OR && op != BinaryExprNode.binarysign.DOT;
    }



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
        isfunction_id = false;
        var_store_or_not = true;
        main_func = null;
        //currentblock = mainfn.rootBlock;
        //returntype = type_;
        //var_num = 0;
        add_builtin_func();
    }

    public IRTYPE type_to_irtype(Type type){
        IRTYPE irtype_;
        if(type.Type_name == Type_kind.INT){
            if(type.dims == 0)irtype_ = new INT_TYPE(32);
            else{
                IRTYPE int_type = new INT_TYPE(32);
                IRTYPE cur = int_type;
                for (int i = 1; i <= type.dims; i++) {
                    cur = new ptr_type(cur);
                }
                irtype_ = cur;
            }
            //System.out.println(32);
        }else if(type.Type_name == Type_kind.BOOL){
            //irtype_ = new INT_TYPE(8);
            if(type.dims == 0)irtype_ = new INT_TYPE(8);
            else{
                IRTYPE int_type = new INT_TYPE(8);
                IRTYPE cur = int_type;
                for (int i = 1; i <= type.dims; i++) {
                    cur = new ptr_type(cur);
                }
                irtype_ = cur;
            }
            //System.out.println(8);
        }else if(type.Type_name == Type_kind.VOID){
            irtype_ = new irvoidtype();
        }else if(type.Type_name == Type_kind.NULL){
            irtype_ = new NULL_PTR();
        }else if(type.Type_name == Type_kind.CLASS){
            IRTYPE tmp = gScope.find_ir_classtype(type.name);
            irtype_ = toIRArrayType(new ptr_type(tmp),type.dims);
        }else if(type.Type_name == Type_kind.STRING){
            IRTYPE tmp = new ptr_type(new INT_TYPE(8));
            irtype_ = toIRArrayType(tmp,type.dims);
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
        boolean need_copy_ = need_copy;
        need_copy = false;
        it.name.accept(this);
        need_copy = need_copy_;
        register reg = (register) returnentity;

        register array = new register(curfunction.register_id++, ((ptr_type)reg.type).irtype);
        currentblock.push_back(new load(array.type,reg,array));

        need_copy_ = need_copy;
        need_copy = true;
        it.index.accept(this);
        need_copy = need_copy_;
        entity arrayind = returnentity;
        register retreg_ptr = new register(curfunction.register_id++, array.type);
        getelement cur = new getelement(array,retreg_ptr);
        cur.values.add(arrayind);
        currentblock.push_back(cur);
        if(need_copy){
            register retreg = new register(curfunction.register_id++, ((ptr_type)retreg_ptr.type).irtype);
            currentblock.push_back(new load(retreg.type,retreg_ptr,retreg));
            returnentity = retreg;
        }
        else {
            returnentity = retreg_ptr;
        }
    }

    @Override
    public void visit(BackPLUSMINUSExpr it) {
        // TODO Auto-generated method stub
        boolean need_copy_ = need_copy;
        need_copy = false;
        it.lhs.accept(this);
        need_copy = need_copy_;
        entity ret = returnentity;//a load出来
        register varcopy = new register(curfunction.register_id++, ((ptr_type) returnentity.type).irtype) ;
        currentblock.push_back(new load(varcopy.type,returnentity,varcopy));
        if(it.sign == BackPLUSMINUSExpr.backsign.MINUS_MINUS){//--a
            register tmpreg = new register(curfunction.register_id++, new INT_TYPE(32));//a = a - 1, a - 1暂存的reg
            currentblock.push_back(new binary(varcopy.type,varcopy,new constant(-1, constant.constant_op.INT,new INT_TYPE(32)),tmpreg, binary.opType.add));
            entity e = currentScope.getEntity(((BasicExprNode)it.lhs).contex,true);
            currentblock.push_back(new store(tmpreg,e,varcopy.type));
            returnentity = varcopy;
        }else{//++a
            register tmpreg = new register(curfunction.register_id++, new INT_TYPE(32));//a = a - 1, a - 1暂存的reg
            currentblock.push_back(new binary(varcopy.type,varcopy,new constant(1, constant.constant_op.INT,new INT_TYPE(32)),tmpreg, binary.opType.add));
            entity e = currentScope.getEntity(((BasicExprNode)it.lhs).contex,true);
            currentblock.push_back(new store(tmpreg,e,varcopy.type));
            returnentity = varcopy;
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
            returnentity = new constant(Integer.parseInt(it.contex), constant.constant_op.INT,new INT_TYPE(32));
            if(ifgloabl)global_return_value = it.contex;
        } else if(it.opt == BasicExprNode.option.BOOL){
            if(Objects.equals(it.contex, "true")){
                returnentity = new constant(1, constant.constant_op.BOOLi8,new INT_TYPE(8));
                if(ifgloabl)global_return_value = "1";
            }else {
                returnentity = new constant(0, constant.constant_op.BOOLi8,new INT_TYPE(8));
                if(ifgloabl)global_return_value = "0";
            }
        }else if(it.opt == BasicExprNode.option.NULL){
            returnentity = new register(0,new NULL_PTR());
        } else if(it.opt == BasicExprNode.option.THIS){
            returnentity = curclass;
        }else if(it.opt == BasicExprNode.option.STRING){//left
            global_string_constant curstr = new global_string_constant(it.contex.substring(1,it.contex.length() - 1));
            global_def.global_def_stmts.add(curstr);
            returnentity = curstr.reg;
        }else {
            if(it.opt == BasicExprNode.option.Identifier){
//                if(!ifgloabl) {
//                    entity varentity = currentScope.getEntity(it.contex, true);//读出的地方
//                    IRTYPE irtype_ = ((register) varentity).type;
//                    //returnentity = varentity;/////////////
//                    if(need_copy) {
//                        returnentity = new register((curfunction.register_id), irtype_);
//                        currentblock.push_back(new load(irtype_, varentity, new register(curfunction.register_id++, irtype_)));
//
//                    }else{
//                        returnentity = varentity;
//                    }
//
//                    }else{
//// init 函数
//                }
                if(isfunction_id){
                    Type func_ret_type = gScope.getretTypefromfuc(it.pos,it.contex);
                    IRTYPE irtype = type_to_irtype(func_ret_type);
                    //hanshudiaoyong func_call;
                    if(func_ret_type.Type_name == Type_kind.VOID){
                        //func_call = new hanshudiaoyong(it.contex,irtype);
                        cur_function_call.function_name += it.contex;
                        cur_function_call.void_or_not = true;
                    }else{
                        //func_call = new hanshudiaoyong(it.contex,irtype,null);
                        cur_function_call.function_name += it.contex;
                        cur_function_call.rettype = irtype;
                    }
                    curfunction_call_parameters = gScope.getirparameterlistfromfuc(it.pos, cur_function_call.function_name);
                   //cur_function_call = func_call;
                }else{
//                    entity var_entity = currentScope.getEntity(it.contex,true);
//                    IRTYPE irtype = var_entity.type;
//                    if(need_copy || ifarray){
//                        returnentity = new register(curfunction.register_id,irtype);
//                        currentblock.push_back(new load(irtype,var_entity,new register(curfunction.register_id++,irtype)));
//                    }else{
//                        returnentity = var_entity;
//                    }
                    Integer reg_id = gScope.member_id.get(it.contex);
                    if(curclass == null){
                        entity var_entity = currentScope.getEntity(it.contex,true);
                        IRTYPE irtype = ((ptr_type)var_entity.type).irtype;
                        if(need_copy || ifarray){
                            returnentity = new register(curfunction.register_id,irtype);
                            currentblock.push_back(new load(irtype,var_entity,new register(curfunction.register_id++,irtype)));
                        }else{
                            returnentity = var_entity;
                        }
                    }else{
//                        register retreg = new register(curfunction.register_id++, new ptr_type(type_to_irtype(gScope.getType(it.pos,it.contex,true))));
//                        getelement cur = new getelement(curclass,retreg);

                        register classreg = new register(curfunction.register_id++,((ptr_type)curclass.type).irtype);
                        currentblock.push_back(new load(classreg.type,curclass,classreg));
                        register retreg_ptr = new register(curfunction.register_id++, new ptr_type(type_to_irtype(gScope.getType(it.pos,it.contex,true))));
                        getelement cur = new getelement(classreg,retreg_ptr);

                        cur.values.add(new constant(0,new INT_TYPE(32)));
                        cur.values.add(new constant(reg_id,new INT_TYPE(32)));
//                        register class_reg = new register(curfunction.register_id++,cur_class_irtype);
//                        currentblock.push_back(new getelement(curclass,class_reg,new constant(0,new INT_TYPE(32))));
//                        register ret_reg = new register(curfunction.register_id++, gScope.getEntity(it.contex,true).type);
//                        currentblock.push_back(new getelement(class_reg,ret_reg,new constant(reg_id,new INT_TYPE(32))));
                        currentblock.push_back(cur);
                        if(need_copy || ifarray){
                            register retirnreg = new register(curfunction.register_id++, ((ptr_type)retreg_ptr.type).irtype);
                            currentblock.push_back(new load(retirnreg.type,retreg_ptr,retirnreg));
                            returnentity = retirnreg;
                        }else returnentity = retreg_ptr;
                    }
                }
            }
        }


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
            } else if(lhs_type.Type_name == Type_kind.STRING){
                if(it.sign == BinaryExprNode.binarysign.EQUAL){
                    register res = new register(curfunction.register_id++, new INT_TYPE(1));
                    hanshudiaoyong func = new hanshudiaoyong("string_equal",res.type,res);
                    func.parameters.add(left);
                    func.parameters.add(right);
                    currentblock.push_back(func);
                    returnentity = res;
                }else if(it.sign == BinaryExprNode.binarysign.NOT_EQUAL){
                    register res = new register(curfunction.register_id++, new INT_TYPE(1));
                    hanshudiaoyong func = new hanshudiaoyong("string_not_Equal",res.type,res);
                    func.parameters.add(left);
                    func.parameters.add(right);
                    currentblock.push_back(func);
                    returnentity = res;
                }else if(it.sign == BinaryExprNode.binarysign.LESS){
                    register res = new register(curfunction.register_id++, new INT_TYPE(1));
                    hanshudiaoyong func = new hanshudiaoyong("string_less",res.type,res);
                    func.parameters.add(left);
                    func.parameters.add(right);
                    currentblock.push_back(func);
                    returnentity = res;
                }else if(it.sign == BinaryExprNode.binarysign.LESS_E){
                    register res = new register(curfunction.register_id++, new INT_TYPE(1));
                    hanshudiaoyong func = new hanshudiaoyong("string_lessEqual",res.type,res);
                    func.parameters.add(left);
                    func.parameters.add(right);
                    currentblock.push_back(func);
                    returnentity = res;
                }else if(it.sign == BinaryExprNode.binarysign.GREATER){
                    register res = new register(curfunction.register_id++, new INT_TYPE(1));
                    hanshudiaoyong func = new hanshudiaoyong("string_greater",res.type,res);
                    func.parameters.add(left);
                    func.parameters.add(right);
                    currentblock.push_back(func);
                    returnentity = res;
                }else if(it.sign == BinaryExprNode.binarysign.GREATER_E){
                    register res = new register(curfunction.register_id++, new INT_TYPE(1));
                    hanshudiaoyong func = new hanshudiaoyong("string_greaterEqual",res.type,res);
                    func.parameters.add(left);
                    func.parameters.add(right);
                    currentblock.push_back(func);
                    returnentity = res;
                }
            }
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
            }else if(lhs_type.Type_name == Type_kind.STRING && it.sign == BinaryExprNode.binarysign.ADD){
                register res = new register(curfunction.register_id++, new ptr_type(new INT_TYPE(8)));
                hanshudiaoyong string_add = new hanshudiaoyong("string_add",res.type,res);
                currentblock.push_back(string_add);
                returnentity = res;
            }
        } else if(it.sign == BinaryExprNode.binarysign.ASSIGN){
            need_copy = false;
            it.lhs.accept(this);
            Type lhs_type = it.lhs.type;
            entity left = returnentity;
            need_copy = true;
            it.rhs.accept(this);
            Type rhs_type = it.rhs.type;
            entity right = returnentity;
            if(right instanceof register){
                //register reg = new register(curfunction.register_id++,type_to_irtype(lhs_type));
                type_transfer(right,((ptr_type)left.type).irtype);
                //right = reg;
            }
            currentblock.push_back(new store(right,left,((ptr_type)left.type).irtype));
            returnentity = right;
        } else if(it.sign == BinaryExprNode.binarysign.AND_AND){
            it.lhs.accept(this);
            label curlabel = new label(currentblock.Identifier);
            label truelabel = new label((curfunction.register_id - 1) + "AND_AND_TRUE");
            block trueblock = new block(truelabel.label_name);

            label outlabel = new label((curfunction.register_id - 1) + "AND_AND_OUT");
            block outblock = new block(outlabel.label_name);
            currentblock.push_back(new branch(truelabel,outlabel,returnentity));
            currentblock = trueblock;
            it.rhs.accept(this);
            currentblock.push_back(new branch(outlabel));
            currentblock = outblock;

            register retreg = new register(curfunction.register_id++, new INT_TYPE(1));
            PHI phi = new PHI(retreg, new INT_TYPE(1));
            phi.labels.add(curlabel);
            phi.values.add(new constant(0,new INT_TYPE(1)));
            phi.labels.add(truelabel);
            phi.values.add(returnentity);
            currentblock.push_back(phi);
            curfunction.blocks.add(trueblock);
            curfunction.blocks.add(outblock);
            returnentity = retreg;


        }else if(it.sign == BinaryExprNode.binarysign.OR_OR){
            it.lhs.accept(this);
            label curlabel = new label(currentblock.Identifier);
            label outlabel = new label((curfunction.register_id - 1) + "OR_OR_OUT");
            block outblock = new block(outlabel.label_name);
            label falselabel = new label((curfunction.register_id - 1) + "OR_OR_FALSE");
            block falseblock = new block(falselabel.label_name);


            currentblock.push_back(new branch(outlabel,falselabel,returnentity));
            currentblock = falseblock;
            it.rhs.accept(this);
            currentblock.push_back(new branch(outlabel));
            currentblock = outblock;

            register retreg = new register(curfunction.register_id++, new INT_TYPE(1));
            PHI phi = new PHI(retreg, new INT_TYPE(1));
            phi.labels.add(curlabel);
            phi.values.add(new constant(1,new INT_TYPE(1)));
            phi.labels.add(falselabel);
            phi.values.add(returnentity);
            currentblock.push_back(phi);
            curfunction.blocks.add(falseblock);
            curfunction.blocks.add(outblock);
            returnentity = retreg;

        }else if(it.sign == BinaryExprNode.binarysign.DOT){
            boolean isfunctionid_ = isfunction_id;
            isfunction_id = false;
            boolean need_copy_ = need_copy;
            need_copy = false;
            it.lhs.accept(this);
            need_copy = need_copy_;
            isfunction_id = isfunctionid_;
            Type lefttype = it.lhs.type;
            entity left = returnentity;
            if(lefttype.Type_name == Type_kind.CLASS){
                curclass = (register) left;
                cur_class_irtype = (CLASS) gScope.find_ir_classtype(lefttype.name);
                if(cur_function_call != null && isfunction_id){
                    cur_function_call.function_name += "class" + cur_class_irtype.class_name + "_" ;
                    register classload = new register(curfunction.register_id++, ((ptr_type)left.type).irtype);
                    currentblock.push_back(new load(classload.type,left,classload));
                    cur_function_call.parameters.add(classload);
                }
                globalScope gscop_ = gScope;
                Scope currentscope_ = currentScope;
                gScope = (globalScope) gScope.getscopefromclass(it.pos,lefttype.name);
                currentScope = gScope;
                it.rhs.accept(this);
                gScope = gscop_;
                currentScope = currentscope_;
                curclass = null;
                cur_class_irtype = null;
            } else if(lefttype.dims > 0){
                if(cur_function_call != null)cur_function_call.parameters.add(left);
                globalScope Gscope_ = gScope;
                Scope curscope_ = currentScope;
                gScope = (globalScope) gScope.getscopefromclass(it.pos, "_ARRAY");
                currentScope = gScope;
                it.rhs.accept(this);
                gScope = Gscope_;
                currentScope = curscope_;
            }else if(lefttype.Type_name == Type_kind.STRING){
                if(cur_function_call != null){
                    register lv = new register(curfunction.register_id++,((ptr_type)left.type).irtype);
                    currentblock.push_back(new load(lv.type,left,lv));
                    cur_function_call.parameters.add(lv);
                }
                globalScope Gscope_ = gScope;
                Scope curscope_ = currentScope;
                gScope = (globalScope) gScope.getscopefromclass(it.pos, "string");
                currentScope = gScope;
                it.rhs.accept(this);
                gScope = Gscope_;
                currentScope = curscope_;
            }
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
        it.expr.accept(this);
        
    }

    @Override
    public void visit(BreakNode it) {
        // TODO Auto-generated method stub
        currentblock.flow_type = block.Flow_Type.BREAK;
        
    }

    @Override
    public void visit(ClassDefNode it) {
        // TODO Auto-generated method stub
        currentScope = ((globalScope)currentScope).getscopefromclass(it.pos,it.name);
        gScope = (globalScope) currentScope;
        isclassdef = true;
        CLASS classtype = new CLASS(it.name);
        cur_class_irtype = classtype;
        it.varDef.forEach(x -> x.accept(this));
        if(it.construDefNode != null)it.construDefNode.accept(this);
        it.funcDef.forEach(x -> x.accept(this));
        global_def.global_def_stmts.add(new class_define_stmt(classtype));
        gScope = (globalScope) gScope.parentScope();
        currentScope = currentScope.parentScope();
        gScope.classtype.put(it.name,cur_class_irtype);
        isclassdef = false;
        cur_class_irtype = null;
    }

    @Override
    public void visit(ConstruDefNode it) {
        // TODO Auto-generated method stub
        function constructorfunc = new function(it.name);
        //constructorfunc.ret_ = new ret(new register(curfunction.register_id++,curclass.type), curclass.type);//void
        constructorfunc.ret_ = new ret();
        curfunction = constructorfunc;
        currentblock = curfunction.rootblock;
        register parareg = new register(curfunction.register_id++, new ptr_type(cur_class_irtype));
        curfunction.parameterid.add("__class_ptr");
        curfunction.parameter_list.add(parareg);
        register copyreg = new register(curfunction.register_id++, new ptr_type(parareg.type));
        currentblock.push_back(new alloca(copyreg, parareg.type));
        currentblock.push_back(new store(parareg,copyreg,copyreg.type));
        curclass = copyreg;
        it.suiteNode.accept(this);
        curclass = null;
        global_def.functions.add(constructorfunc);
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
        if(returnentity instanceof register && ((INT_TYPE)returnentity.type).width != 1){
            register reg = new register(0, new INT_TYPE(1));
            type_transfer(returnentity,reg.type);
            //returnentity = reg;
        }
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
        int id = 0;
        if(Objects.equals(it.name, "main") && main_func != null){
            curfunction = main_func;
            currentblock = main_func.rootblock;
            currentblock.alloca_stmts.add(new alloca(new register(curfunction.register_id++,new ptr_type(new INT_TYPE(32))),new INT_TYPE(32)));
            curfunction.ret_ = new ret(new register(curfunction.register_id - 1,new ptr_type(new INT_TYPE(32))),new INT_TYPE(32));
            id = curfunction.register_id - 1;
        }
        else {
            function func;
            if(isclassdef)func = new function("class" + cur_class_irtype.class_name + "_" + it.name);
            else func = new function(it.name);
            if(Objects.equals(it.name, "main"))main_func = func;
            curfunction = func;
            //func.function_id_num = function_id++;
            global_def.functions.add(func);
            id = curfunction.register_id;
            if (it.fucTypeNode.void_or_not) {
                func.ret_ = new ret();
            } else {// 非 void
                it.fucTypeNode.typeNode.accept(this);
                IRTYPE irtype;
                if (((constant) returnentity).op == constant.constant_op.INT) {
                    irtype = new INT_TYPE(32);
                } else if (((constant) returnentity).op == constant.constant_op.BOOLi1) {
                    irtype = new INT_TYPE(1);
                } else {
                    irtype = new INT_TYPE(32);//初始化而已，string class等要改
                }
//                if(curclass != null){
//                    irtype = curclass.type;////////
//                }

                register reg = new register(curfunction.register_id++, new ptr_type(irtype));
                func.ret_ = new ret(reg, irtype);
                func.rootblock.alloca_stmts.add(new alloca(reg, irtype));
            }
            currentblock = func.rootblock;
        }

        ArrayList<block>return_collector_origin = return_collector;
        return_collector = new ArrayList<>();

        ArrayList<IRTYPE>parameters = new ArrayList<>();

        if(isclassdef){
            register parameterreg = new register(curfunction.register_id++, new ptr_type(cur_class_irtype));
            curfunction.parameterid.add("__class_ptr");
            curfunction.parameter_list.add(parameterreg);
            parameters.add(parameterreg.type);
        }

        currentScope = gScope.getscopefromfuc(it.pos,it.name);
        it.parameterListNode.accept(this);
        for(int i = 0 ; i < curfunction.parameter_list.size() ; i++){
            register para_reg = curfunction.parameter_list.get(i);
            parameters.add(para_reg.type);
            register reg = new register(curfunction.register_id++, new ptr_type(para_reg.type));
            currentblock.alloca_stmts.add(new alloca(reg,para_reg.type));
            currentblock.alloca_stmts.add(new store(para_reg,reg,reg.type));
            currentScope.entities.put(curfunction.parameterid.get(i),reg);
            if(isclassdef && i == 0)curclass = reg;
        }
        gScope.functionIRparameters.put(curfunction.identifier,parameters);
        //register retreg = new register(curfunction.register_id++, new ptr_type(curfunction.ret_.irtype));
//retuen mei
        it.suiteNode.accept(this);

        currentScope = currentScope.parentScope();

            return_collector.forEach(x -> {
                x.push_back(new branch(new label(Integer.parseInt(currentblock.Identifier))));
            });
        if(!it.fucTypeNode.void_or_not) {
            register r = new register(curfunction.register_id++, curfunction.ret_.irtype);
            currentblock.push_back(new load(curfunction.ret_.irtype, new register(id, new ptr_type(curfunction.ret_.irtype)), r));
            curfunction.ret_ = new ret(r, curfunction.ret_.irtype);
            return_collector = return_collector_origin;
        }else{
            return_collector = return_collector_origin;
        }
        if(curclass != null)curclass = null;
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
        boolean isfunction_id_ = isfunction_id;
        isfunction_id = true;
        hanshudiaoyong function_call__ = cur_function_call;
        ArrayList<IRTYPE> parameters_ = curfunction_call_parameters;
        cur_function_call = new hanshudiaoyong();
        it.expr.accept(this);
        isfunction_id = isfunction_id_;
        it.sen_list.accept(this);
        register destreg = new register(curfunction.register_id++, cur_function_call.rettype);
        cur_function_call.dest_reg = destreg;
        currentblock.push_back(cur_function_call);
        returnentity = destreg;
        cur_function_call = function_call__;
        curfunction_call_parameters = parameters_;
    }

    @Override
    public void visit(IfStmtNode it) {
        // TODO Auto-generated method stub
        it.exprNode.accept(this);
        if(returnentity instanceof register && ((INT_TYPE)((register)returnentity).type).width != 1){
            register i1 = new register(0,new INT_TYPE(1));
            type_transfer(returnentity,i1.type);
           // returnentity = i1;
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
        Type curtype = it.type;
        IRTYPE curirtype = type_to_irtype(curtype);
        if(it.neworsize.size() == 0){
            curirtype = ((ptr_type)curirtype).irtype;
            register mallocreg = new register(curfunction.register_id++, new ptr_type(new INT_TYPE(8)));
            hanshudiaoyong malloccall = new hanshudiaoyong("malloc", mallocreg.type,mallocreg);
            malloccall.parameters.add(new constant(curirtype.size,new INT_TYPE(64)));
            currentblock.push_back(malloccall);
            register retreg = new register(curfunction.register_id++, new ptr_type(curirtype));
            currentblock.push_back(new bitcast(mallocreg,retreg,retreg.type));
            hanshudiaoyong classconstru = new hanshudiaoyong(it.type.name);
            classconstru.parameters.add(retreg);
            currentblock.push_back(classconstru);
            returnentity = retreg;
        }else {
            ArrayList<entity>entities = new ArrayList<>();
            it.neworsize.forEach(x -> {
                if(x.expr == null)return;
                boolean need_copy_ = need_copy;
                x.expr.accept(this);
                need_copy = need_copy_;
                entities.add(returnentity);
            });
            Type base = new Type(curtype);
            base.dims = 0;
            IRTYPE baseirtypr = type_to_irtype(base);
            for(int i = entities.size(); i < it.neworsize.size();i++){
                baseirtypr = new ptr_type(baseirtypr);
            }
            returnentity = malloc_array(entities,0,baseirtypr);
        }
    }

    @Override
    public void visit(ParameterNode it) {
        // TODO Auto-generated method stub
        IRTYPE irtype = type_to_irtype(it.typeNode.type);
        register curpara = new register(curfunction.register_id++, irtype);
        //currentScope.entities.put(it.name , curpara);
        curfunction.parameterid.add(it.name);
        returnentity = curpara;
        
    }

    @Override
    public void visit(ParameterListNode it) {
        // TODO Auto-generated method stub
        it.parameterNodes.forEach(x -> {
            x.accept(this);
            curfunction.parameter_list.add((register) returnentity);
            //curfunction.parameterid.add();
        });
    }

    @Override
    public void visit(PrePLUSMINUSExpr it) {
        // TODO Auto-generated method stub
        boolean need_copy_ = need_copy;
        need_copy = false;
        it.rhs.accept(this);
        need_copy = need_copy_;
        entity ret = returnentity;//a load出来
        register varcopy = new register(curfunction.register_id++, ((ptr_type) returnentity.type).irtype) ;
        currentblock.push_back(new load(varcopy.type,returnentity,varcopy));
        if(it.sign == PrePLUSMINUSExpr.presign.MINUS_MINUS){//--a
            register tmpreg = new register(curfunction.register_id++, new INT_TYPE(32));//a = a - 1, a - 1暂存的reg
            currentblock.push_back(new binary(varcopy.type,varcopy,new constant(-1, constant.constant_op.INT,new INT_TYPE(32)),tmpreg, binary.opType.add));
            entity e = currentScope.getEntity(((BasicExprNode)it.rhs).contex,true);
            currentblock.push_back(new store(tmpreg,e,varcopy.type));
            returnentity = tmpreg;
        }else{//++a
            register tmpreg = new register(curfunction.register_id++, new INT_TYPE(32));//a = a - 1, a - 1暂存的reg
            currentblock.push_back(new binary(varcopy.type,varcopy,new constant(1, constant.constant_op.INT,new INT_TYPE(32)),tmpreg, binary.opType.add));
            entity e = currentScope.getEntity(((BasicExprNode)it.rhs).contex,true);
            currentblock.push_back(new store(tmpreg,e,varcopy.type));
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
        if(it.exprNodes.isEmpty())return;
       int off = curfunction_call_parameters.size() - it.exprNodes.size();
       for(int i = 0 ; i < it.exprNodes.size() ; i++){
           it.exprNodes.get(i).accept(this);
           if(returnentity instanceof register)type_transfer(returnentity,curfunction_call_parameters.get(i + off));
           cur_function_call.parameters.add(returnentity);
       }
        
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
                returnentity = new constant(0, constant.constant_op.INT,new INT_TYPE(32));
            }else if(it.basicTypeNode.basicType == Type_kind.BOOL){
                returnentity = new constant(0,constant.constant_op.BOOLi1,new INT_TYPE(1));
            }else {//string

            }
            //zhizhen
        }else{

        }
    }

    @Override
    public void visit(UnaryExprNode it) {
        // TODO Auto-generated method stub
        if(it.sign == UnaryExprNode.unarysign.ADD){
            it.expr.accept(this);
        }else if(it.sign == UnaryExprNode.unarysign.MINUS){
            it.expr.accept(this);
            entity ret = new register(curfunction.register_id++,((register)returnentity).type);
            currentblock.push_back(new binary((returnentity).type,new constant(0, constant.constant_op.INT,new INT_TYPE(32)),returnentity,ret, binary.opType.sub));
            returnentity = ret;
        }else if(it.sign == UnaryExprNode.unarysign.NOT){
            it.expr.accept(this);
            //类型转换

            if(returnentity instanceof register){
                entity newentity = new register(curfunction.register_id++, new INT_TYPE(1));

                type_transfer(returnentity,newentity.type);
                returnentity = newentity;
            }

            entity ret = new register(curfunction.register_id++,((register)returnentity).type);
            currentblock.push_back(new binary((returnentity).type,new constant(1, constant.constant_op.BOOLi1,new INT_TYPE(1)),returnentity,ret, binary.opType.xor));
            returnentity = ret;
        }else {//FAN
            it.expr.accept(this);
            entity ret = new register(curfunction.register_id++,((register)returnentity).type);
            currentblock.push_back(new binary(((register)returnentity).type,new constant(-1, constant.constant_op.INT,new INT_TYPE(32)),returnentity,ret, binary.opType.xor));
            returnentity = ret;
        }
        
    }

    @Override
    public void visit(VarDefNode it) {
        it.typeNode.accept(this);
        Type ret = it.type;
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
        if(isclassdef){
            it.varDefSentenceNodes.forEach(x -> {
                cur_class_irtype.class_irtypes.add(irtype);
                cur_class_irtype.size += irtype.size;
            });
        }
        else if(!ifgloabl) {
            it.varDefSentenceNodes.forEach(x -> {
                int reg_id = curfunction.register_id;
                register reg = new register(reg_id, new ptr_type(irtype));
                currentScope.entities.put(x.name, reg);
                //currentblock.alloca_stmts.add(new alloca(reg, irtype));
                curfunction.rootblock.alloca_stmts.add(new alloca(reg,irtype));
//butaidui
                curfunction.register_id++;
                if (x.initialed_or_not) {
                    var_store_or_not = true;
                    x.exprNode.accept(this);
                    ////////////
                   if(returnentity instanceof register)type_transfer(returnentity,irtype);
                   currentblock.push_back(new store(returnentity,reg,irtype));
                }
//                if(it.type.Type_name == Type_kind.CLASS){
//                    hanshudiaoyong cur_func_call = new hanshudiaoyong(it.type.name,new irvoidtype());
//                    cur_func_call.parameters.add(reg);
//                    currentblock.push_back(cur_func_call);
//                }
            });
        } else {//global
            it.varDefSentenceNodes.forEach(x -> {
//                if(ret.Type_name == Type_kind.INT){
//                    if(x.initialed_or_not){
//                        if(main_func == null){
//                            main_func = new function("main");
//                        }
//                        currentblock = main_func.rootblock;
//                        curfunction = main_func;
//                        global_def.functions.add(main_func);
//
//                        x.exprNode.accept(this);//获取变量名之类
//                        register global_register = new register(x.name,new ptr_type(irtype),true);
//                        gScope.entities.put(x.name,global_register);
//
//                        if(returnentity instanceof constant){
//                            global_def.global_def_stmts.add(new dso_local_global(global_register,irtype,Integer.parseInt(global_return_value)));
//                        }else{
//                            global_def.global_def_stmts.add(new dso_local_global(global_register,irtype,0));
//                            currentblock.push_back(new store(returnentity,global_register,global_register.type));
//                        }
//                    }else {
//                        register global_register = new register(x.name,new ptr_type(irtype),true);
//                        gScope.entities.put(x.name,global_register);
//                        global_def.global_def_stmts.add(new dso_local_global(global_register,irtype,0));
//                    }
//                }else if(ret.Type_name == Type_kind.BOOL){
//                    if(x.initialed_or_not){
//                        x.exprNode.accept(this);//获取变量名之类
//                        register global_register = new register(x.name,new ptr_type(irtype),true);
//                        gScope.entities.put(x.name,global_register);
//                        global_def.global_def_stmts.add(new dso_local_global(global_register,irtype,Integer.parseInt(global_return_value)));
//                    }else{
//                        register global_register = new register(x.name,new ptr_type(irtype),true);
//                        gScope.entities.put(x.name,global_register);
//                        global_def.global_def_stmts.add(new dso_local_global(global_register,irtype,0));
//                    }
//                }
                register reg = new register(x.name,new ptr_type(irtype),true);
                currentScope.entities.put(x.name,reg);
                if(main_func == null){
                    main_func = new function("main");
                    global_def.functions.add(main_func);
                }
                if(x.initialed_or_not){

                    curfunction = main_func;
                    currentblock = main_func.rootblock;
                    x.exprNode.accept(this);
                    if(returnentity instanceof constant){
                        global_def.global_def_stmts.add(new global_def_stmt(reg,(constant) returnentity));
                    }else {
                        if(irtype instanceof INT_TYPE)global_def.global_def_stmts.add(new global_def_stmt(reg,new constant(0,irtype)));
                        else global_def.global_def_stmts.add(new global_def_stmt(reg, new constant(0,new NULL_PTR())));
                        type_transfer(returnentity,irtype);
                        currentblock.push_back(new store(returnentity,reg,reg.type));

                    }
                    curfunction = null;
                    currentblock = null;
                }else{
                    global_def.global_def_stmts.add(new global_def_stmt(reg));
                }


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

        if(returnentity instanceof register && ((INT_TYPE)(returnentity).type).width != 1){
            register i1 = new register(0,new INT_TYPE(1));
            type_transfer(returnentity,i1.type);
            //returnentity = i1;
        }
       // curfunction.blocks.add(condition_block);

        label true_label = new label(curfunction.register_id++);
        block true_block = new block(Integer.toString(curfunction.register_id - 1));
        curfunction.blocks.add(true_block);
        entity i1entity = returnentity;
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
        branch true_branch = new branch(true_label,false_label,i1entity);
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
