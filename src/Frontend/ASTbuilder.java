package Frontend;

import AST.*;
import Parser.MxstarBaseVisitor;
import Parser.MxstarParser;
import Util.error.semanticError;
import Util.position;
import Util.Type;

public class ASTbuilder extends MxstarBaseVisitor<ASTNode> {
    @Override public ASTNode visitProgram(MxstarParser.ProgramContext ctx) {
        RootNode root = new RootNode(new position(ctx));
        ctx.define().forEach(x -> root.defNodes.add((DefNode)(visit(x))));
        return root;
    }
    @Override public ASTNode visitGlobal_var_def_stmt(MxstarParser.Global_var_def_stmtContext ctx) {
        return new Global_var_define_youfen(new position(ctx),(VarDefNode) visit(ctx.var_define_wufen()));
    }

//    @Override public ASTNode visitDefine(MxstarParser.DefineContext ctx) {
//        if(ctx.class_define() != null)return visit(ctx.class_define());
//        else if(ctx.function_define() != null)return visit(ctx.function_define());
//        else return visit(ctx.global_var_def_stmt());
//    }

    @Override public ASTNode visitClass_define(MxstarParser.Class_defineContext ctx) {
        ClassDefNode classDefNode = new ClassDefNode(new position(ctx), ctx.Identifier().toString());
        if(ctx.constructor_define() != null){
            classDefNode.construDefNode = (ConstruDefNode)visit(ctx.constructor_define());
        }
        ctx.function_define().forEach(x -> classDefNode.funcDef.add((FucDefNode) visit(x)));
        ctx.var_define_youfen().forEach(x -> classDefNode.varDef.add((VarDefNode) visit(x)));
        return classDefNode;
    }

    @Override public ASTNode visitConstructor_define(MxstarParser.Constructor_defineContext ctx) {
        ConstruDefNode construDefNode = new ConstruDefNode(new position(ctx), ctx.Identifier().toString(),(SuiteNode) visit(ctx.suite()));
        return construDefNode;
    }

    @Override public ASTNode visitSuite(MxstarParser.SuiteContext ctx) {
        SuiteNode suiteNode = new SuiteNode(new position(ctx));
        ctx.block().forEach(x -> suiteNode.blockNodes.add((BlockNode) visit(x)));
        return suiteNode;
    }

    @Override public ASTNode visitBlock(MxstarParser.BlockContext ctx) {
//        if(ctx.statement() != null){
//            BlockNode blockNode = new BlockNode(new position(ctx),(StmtNode) visit(ctx.statement()));
//            return blockNode;
//        }
//        else return new BlockNode(new position(ctx),(SuiteNode) visit(ctx.suite()));
        SuiteNode suiteNode = ctx.suite() != null ? (SuiteNode) visit(ctx.suite()) : null;
        StmtNode stmtNode = ctx.statement() !=  null ? (StmtNode) visit(ctx.statement()) : null;
        return new BlockNode(new position(ctx),suiteNode,stmtNode);
    }


    @Override public ASTNode visitParameter_list(MxstarParser.Parameter_listContext ctx) {
       ParameterListNode parameterListNode = new ParameterListNode(new position(ctx));
       ctx.parameter().forEach(x -> parameterListNode.parameterNodes.add((ParameterNode) visit(x)));
       return parameterListNode;
    }

    @Override public ASTNode visitParameter(MxstarParser.ParameterContext ctx) {
        ParameterNode parameterNode = new ParameterNode(new position(ctx), ctx.Identifier().toString(), (TypeNode) visit(ctx.type()));
        return parameterNode;
    }

    @Override public ASTNode visitFunction_define(MxstarParser.Function_defineContext ctx) {
        FucDefNode fucDefNode = new FucDefNode(new position(ctx),(FucTypeNode) visit(ctx.func_type()), ctx.Identifier().toString(), (ParameterListNode) visit(ctx.parameter_list()), (SuiteNode) visit(ctx.suite()));
        return fucDefNode;
    }

    @Override public ASTNode visitVar_define_youfen(MxstarParser.Var_define_youfenContext ctx) {
        return visit(ctx.var_define_wufen());
    }

    @Override public ASTNode visitVar_define_wufen(MxstarParser.Var_define_wufenContext ctx) {
        VarDefNode varDefNode = new VarDefNode(new position(ctx), (TypeNode) visit(ctx.type()));
        ctx.var_define_sentence().forEach(x -> varDefNode.varDefSentenceNodes.add((VarDefSentenceNode) visit(x)));
        return varDefNode;
    }

    @Override public ASTNode visitVar_define_sentence(MxstarParser.Var_define_sentenceContext ctx) {
        if(ctx.expression() != null){
            return new VarDefSentenceNode(new position(ctx), ctx.Identifier().toString(),(ExprNode) visit(ctx.expression()));
        }else return new VarDefSentenceNode(new position(ctx), ctx.Identifier().toString());
    }

    @Override public ASTNode visitType(MxstarParser.TypeContext ctx) {
        if(ctx.Identifier() == null){
            return new TypeNode(new position(ctx),(BasicTypeNode) visit(ctx.basic_type()),ctx.LEFT_BRACK().size());
        }else {
            return new TypeNode(new position(ctx),ctx.Identifier().toString(),ctx.LEFT_BRACK().size());
        }
    }

    @Override public ASTNode visitBasic_type(MxstarParser.Basic_typeContext ctx) {
        if(ctx.INT() != null){
            return new BasicTypeNode(new position(ctx), Type.Type_kind.INT);
        }else if(ctx.BOOL() != null){
            return new BasicTypeNode(new position(ctx), Type.Type_kind.BOOL);
        }else{
            return new BasicTypeNode(new position(ctx), Type.Type_kind.STRING);
        }
    }

    @Override public ASTNode visitFunc_type(MxstarParser.Func_typeContext ctx) {
        if(ctx.VOID() == null){
            return new FucTypeNode(new position(ctx),false, (TypeNode) visit(ctx.type()));
        }else{
            return new FucTypeNode(new position(ctx), true);
        }
    }


    @Override public ASTNode visitStatement(MxstarParser.StatementContext ctx) {
        if(ctx.var_define_youfen() != null){
            return (VarDefNode) visit(ctx.var_define_youfen());
        }else if(ctx.expression_stmt() != null){
            return visit(ctx.expression_stmt());
        }else if(ctx.if_stmt() != null)return visit(ctx.if_stmt());
        else if(ctx.while_stmt() != null)return visit(ctx.while_stmt());
        else if(ctx.for_stmt() != null)return visit(ctx.for_stmt());
        else if(ctx.return_stmt() != null)return visit(ctx.return_stmt());
        else if(ctx.continue_stmt() != null)return visit(ctx.continue_stmt());
        else return visit(ctx.break_stmt());
    }


    @Override public ASTNode visitExpression_stmt(MxstarParser.Expression_stmtContext ctx) {

        return visit(ctx.expression());
    }

    @Override public ASTNode visitIf_stmt(MxstarParser.If_stmtContext ctx) {
        if(ctx.else_stmt() != null){
            return new IfStmtNode(new position(ctx), (ExprNode) visit(ctx.expression()), (Suite_StmtNode) visit(ctx.suite_statement()),(ElseStmtNode) visit(ctx.else_stmt()));
        }else{
            return new IfStmtNode(new position(ctx), (ExprNode) visit(ctx.expression()), (Suite_StmtNode) visit(ctx.suite_statement()));
        }
    }

    @Override public ASTNode visitElse_stmt(MxstarParser.Else_stmtContext ctx) {
        return new ElseStmtNode(new position(ctx),(Suite_StmtNode) visit(ctx.suite_statement()));
    }

    @Override public ASTNode visitSuite_statement(MxstarParser.Suite_statementContext ctx) {
        SuiteNode suiteNode = ctx.suite() != null ? (SuiteNode) visit(ctx.suite()) : null;
        StmtNode stmtNode = ctx.statement() !=  null ? (StmtNode) visit(ctx.statement()) : null;
        return new Suite_StmtNode(new position(ctx),suiteNode,stmtNode);
    }

    @Override public ASTNode visitWhile_stmt(MxstarParser.While_stmtContext ctx) {
        return new WhileStmtNode(new position(ctx),(ExprNode) visit(ctx.expression()),(Suite_StmtNode) visit(ctx.suite_statement()));
    }

    @Override public ASTNode visitFor_stmt(MxstarParser.For_stmtContext ctx) {
        ForstartNode forstartNode = ctx.for_start() == null ? null : (ForstartNode) visit(ctx.for_start());
        ForfinishNode forfinishNode = ctx.for_finish() == null ? null : (ForfinishNode) visit(ctx.for_finish());
        ExprNode exprNode = ctx.expression() == null ? null : (ExprNode) visit(ctx.expression());
        return new ForStmtNode(new position(ctx), forstartNode, forfinishNode,exprNode,(Suite_StmtNode) visit(ctx.suite_statement()));
    }

    @Override public ASTNode visitFor_start(MxstarParser.For_startContext ctx) {
        if(ctx.var_define_wufen() != null){
            return new ForstartNode(new position(ctx),(VarDefNode) visit(ctx.var_define_wufen()));
        }else return new ForstartNode(new position(ctx),(ExprNode) visit(ctx.expression()));
    }

    @Override public ASTNode visitFor_finish(MxstarParser.For_finishContext ctx) {
        return new ForfinishNode(new position(ctx),(ExprNode) visit(ctx.expression()));
    }

    @Override public ASTNode visitReturn_stmt(MxstarParser.Return_stmtContext ctx) {
        return new ReturnNode(new position(ctx),ctx.expression() == null ? null : (ExprNode) visit(ctx.expression()));
    }

    @Override public ASTNode visitContinue_stmt(MxstarParser.Continue_stmtContext ctx) {
        return new ContinueNode(new position(ctx));
    }

    @Override public ASTNode visitBreak_stmt(MxstarParser.Break_stmtContext ctx) {
        return new BreakNode(new position(ctx));
    }

    @Override public ASTNode visitNewor(MxstarParser.NeworContext ctx) {
        NewerNode newerNode;
        if(ctx.Identifier() != null){
            newerNode = new NewerNode(new position(ctx), ctx.Identifier().toString(),null);
        }else newerNode = new NewerNode(new position(ctx),null,(BasicTypeNode) visit(ctx.basic_type()));

        ctx.creator_size().forEach(x -> {
            newerNode.neworsize.add((NewersizeNode) visit(x));
        });
        return newerNode;
    }

    @Override public ASTNode visitCreator_size(MxstarParser.Creator_sizeContext ctx) {
      return new NewersizeNode(new position(ctx),ctx.expression() != null ? (ExprNode) visit(ctx.expression()) : null);
    }




    @Override public ASTNode visitLambada(MxstarParser.LambadaContext ctx) {
        ParameterListNode parameterListNode = ctx.parameter_list() == null ? null : (ParameterListNode) visit(ctx.parameter_list());
        SuiteNode suiteNode = (SuiteNode) visit(ctx.suite());
        Sentence_ListNode sentence_listNode = (Sentence_ListNode) visit(ctx.sentence_list());
        return new LambadaExprNode(new position(ctx), parameterListNode,suiteNode,sentence_listNode);
    }

    @Override public ASTNode visitSentence_list(MxstarParser.Sentence_listContext ctx) {
        Sentence_ListNode sentence_listNode = new Sentence_ListNode(new position(ctx));
        ctx.expression().forEach(x -> sentence_listNode.exprNodes.add((ExprNode) visit(x)));
        return sentence_listNode;
    }

    @Override public ASTNode visitUnaryexpr(MxstarParser.UnaryexprContext ctx) {
        UnaryExprNode unaryExprNode = new UnaryExprNode(new position(ctx),(ExprNode) visit(ctx.expression()));
        if(ctx.ADD() != null){
            unaryExprNode.sign = UnaryExprNode.unarysign.ADD;
        }else if(ctx.MINUS() != null){
            unaryExprNode.sign = UnaryExprNode.unarysign.MINUS;
        }else if(ctx.NOT() != null){
            unaryExprNode.sign = UnaryExprNode.unarysign.NOT;
        }else if(ctx.FAN() != null){
            unaryExprNode.sign = UnaryExprNode.unarysign.FAN;
        }
        return unaryExprNode;
    }

    @Override public ASTNode visitHanshudiaoyong(MxstarParser.HanshudiaoyongContext ctx) {
        return new HanshuDiaoyongExprNode(new position(ctx),(ExprNode) visit(ctx.expression()),(Sentence_ListNode) visit(ctx.sentence_list()));
    }

    @Override public ASTNode visitBasicexpr(MxstarParser.BasicexprContext ctx) {
        if(ctx.Identifier() != null){
            return new BasicExprNode(new position(ctx),BasicExprNode.option.Identifier,ctx.Identifier().toString());
        }else if(ctx.THIS() != null){
            return new BasicExprNode(new position(ctx),BasicExprNode.option.THIS,null);
        }else if(ctx.NULL() != null){
            return new BasicExprNode(new position(ctx),BasicExprNode.option.NULL,null);
        }else if(ctx.INT_CHOICE() != null){
            return new BasicExprNode(new position(ctx),BasicExprNode.option.INT,ctx.INT_CHOICE().toString());
        }else if(ctx.BOOL_CHOICE() != null){
            return new BasicExprNode(new position(ctx),BasicExprNode.option.BOOL,ctx.BOOL_CHOICE().toString());
        }else{
            return new BasicExprNode(new position(ctx),BasicExprNode.option.STRING,ctx.STRING_CHOICE().toString());
        }
    }

    @Override public ASTNode visitLambadaexpr(MxstarParser.LambadaexprContext ctx) {
        return visit(ctx.lambada());
    }

    @Override public ASTNode visitBackPLUSMINUS(MxstarParser.BackPLUSMINUSContext ctx) {
        if(ctx.SELF_PLUS() != null){
            return new BackPLUSMINUSExpr(new position(ctx),(ExprNode) visit(ctx.expression()), BackPLUSMINUSExpr.backsign.PLUS_PLUS);
        }else return new BackPLUSMINUSExpr(new position(ctx),(ExprNode) visit(ctx.expression()), BackPLUSMINUSExpr.backsign.MINUS_MINUS);
    }

    @Override public ASTNode visitNewexpr(MxstarParser.NewexprContext ctx) {
        return visit(ctx.newor());
    }

    @Override public ASTNode visitArrayexpr(MxstarParser.ArrayexprContext ctx) {
        return new ArrayExprNode(new position(ctx),(ExprNode) visit(ctx.expression(0)),(ExprNode) visit(ctx.expression(1)));
    }


    @Override public ASTNode visitBinaryexpr(MxstarParser.BinaryexprContext ctx) {
        BinaryExprNode binaryExprNode = new BinaryExprNode(new position(ctx),(ExprNode) visit(ctx.expression(0)),(ExprNode) visit(ctx.expression(1)),null);
        if(ctx.STAR() != null)binaryExprNode.sign = BinaryExprNode.binarysign.STAR;
        else if(ctx.DIVIDE() != null)binaryExprNode.sign = BinaryExprNode.binarysign.DIVIDE;
        else if(ctx.MOD() != null)binaryExprNode.sign = BinaryExprNode.binarysign.MOD;
        else if(ctx.ADD() != null)binaryExprNode.sign = BinaryExprNode.binarysign.ADD;
        else if(ctx.MINUS() != null)binaryExprNode.sign = BinaryExprNode.binarysign.MINUS;
        else if(ctx.LEFT_SHIFT() != null)binaryExprNode.sign = BinaryExprNode.binarysign.LEFT_SHIFT;
        else if(ctx.RIGHT_SHIFT() != null)binaryExprNode.sign = BinaryExprNode.binarysign.RIGHT_SHIFT;
        else if(ctx.GREATER() != null)binaryExprNode.sign = BinaryExprNode.binarysign.GREATER;
        else if(ctx.LESS() != null)binaryExprNode.sign = BinaryExprNode.binarysign.LESS;
        else if(ctx.GREATER_E() != null)binaryExprNode.sign = BinaryExprNode.binarysign.GREATER_E;
        else if(ctx.LESS_E() != null)binaryExprNode.sign = BinaryExprNode.binarysign.LESS_E;
        else if(ctx.EQUAL() != null)binaryExprNode.sign = BinaryExprNode.binarysign.EQUAL;
        else if(ctx.NOT_EQUAL() != null)binaryExprNode.sign = BinaryExprNode.binarysign.NOT_EQUAL;
        else if(ctx.AND() != null)binaryExprNode.sign = BinaryExprNode.binarysign.AND;
        else if(ctx.OR() != null)binaryExprNode.sign = BinaryExprNode.binarysign.OR;
        else if(ctx.XOR() != null)binaryExprNode.sign = BinaryExprNode.binarysign.XOR;
        else if(ctx.AND_AND() != null)binaryExprNode.sign = BinaryExprNode.binarysign.AND_AND;
        else if(ctx.OR_OR() != null)binaryExprNode.sign = BinaryExprNode.binarysign.OR_OR;
        else if(ctx.DOT() != null)binaryExprNode.sign = BinaryExprNode.binarysign.DOT;
        else binaryExprNode.sign = BinaryExprNode.binarysign.ASSIGN;
        return binaryExprNode;
    }

    @Override public ASTNode visitPrePLUSMINUS(MxstarParser.PrePLUSMINUSContext ctx) {
        if(ctx.SELF_PLUS() != null){
            return new PrePLUSMINUSExpr(new position(ctx),(ExprNode) visit(ctx.expression()), PrePLUSMINUSExpr.presign.PLUS_PLUS);
        }else return new PrePLUSMINUSExpr(new position(ctx),(ExprNode) visit(ctx.expression()), PrePLUSMINUSExpr.presign.MINUS_MINUS);
    }

    @Override public ASTNode visitBracketxpr(MxstarParser.BracketxprContext ctx) {
        return new BracketExprNode(new position(ctx),(ExprNode) visit(ctx.expression()));
    }
}

