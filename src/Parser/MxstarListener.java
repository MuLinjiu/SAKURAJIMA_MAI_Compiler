// Generated from /Users/mulinjiu/Desktop/HXL/MxCompiler/src/Parser/Mxstar.g4 by ANTLR 4.9.1
package Parser;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link MxstarParser}.
 */
public interface MxstarListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link MxstarParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(MxstarParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(MxstarParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#define}.
	 * @param ctx the parse tree
	 */
	void enterDefine(MxstarParser.DefineContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#define}.
	 * @param ctx the parse tree
	 */
	void exitDefine(MxstarParser.DefineContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#global_var_def_stmt}.
	 * @param ctx the parse tree
	 */
	void enterGlobal_var_def_stmt(MxstarParser.Global_var_def_stmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#global_var_def_stmt}.
	 * @param ctx the parse tree
	 */
	void exitGlobal_var_def_stmt(MxstarParser.Global_var_def_stmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#class_define}.
	 * @param ctx the parse tree
	 */
	void enterClass_define(MxstarParser.Class_defineContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#class_define}.
	 * @param ctx the parse tree
	 */
	void exitClass_define(MxstarParser.Class_defineContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#constructor_define}.
	 * @param ctx the parse tree
	 */
	void enterConstructor_define(MxstarParser.Constructor_defineContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#constructor_define}.
	 * @param ctx the parse tree
	 */
	void exitConstructor_define(MxstarParser.Constructor_defineContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#suite}.
	 * @param ctx the parse tree
	 */
	void enterSuite(MxstarParser.SuiteContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#suite}.
	 * @param ctx the parse tree
	 */
	void exitSuite(MxstarParser.SuiteContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#block}.
	 * @param ctx the parse tree
	 */
	void enterBlock(MxstarParser.BlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#block}.
	 * @param ctx the parse tree
	 */
	void exitBlock(MxstarParser.BlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#parameter_list}.
	 * @param ctx the parse tree
	 */
	void enterParameter_list(MxstarParser.Parameter_listContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#parameter_list}.
	 * @param ctx the parse tree
	 */
	void exitParameter_list(MxstarParser.Parameter_listContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#parameter}.
	 * @param ctx the parse tree
	 */
	void enterParameter(MxstarParser.ParameterContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#parameter}.
	 * @param ctx the parse tree
	 */
	void exitParameter(MxstarParser.ParameterContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#function_define}.
	 * @param ctx the parse tree
	 */
	void enterFunction_define(MxstarParser.Function_defineContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#function_define}.
	 * @param ctx the parse tree
	 */
	void exitFunction_define(MxstarParser.Function_defineContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#var_define_youfen}.
	 * @param ctx the parse tree
	 */
	void enterVar_define_youfen(MxstarParser.Var_define_youfenContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#var_define_youfen}.
	 * @param ctx the parse tree
	 */
	void exitVar_define_youfen(MxstarParser.Var_define_youfenContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#var_define_wufen}.
	 * @param ctx the parse tree
	 */
	void enterVar_define_wufen(MxstarParser.Var_define_wufenContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#var_define_wufen}.
	 * @param ctx the parse tree
	 */
	void exitVar_define_wufen(MxstarParser.Var_define_wufenContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#var_define_sentence}.
	 * @param ctx the parse tree
	 */
	void enterVar_define_sentence(MxstarParser.Var_define_sentenceContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#var_define_sentence}.
	 * @param ctx the parse tree
	 */
	void exitVar_define_sentence(MxstarParser.Var_define_sentenceContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#type}.
	 * @param ctx the parse tree
	 */
	void enterType(MxstarParser.TypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#type}.
	 * @param ctx the parse tree
	 */
	void exitType(MxstarParser.TypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#basic_type}.
	 * @param ctx the parse tree
	 */
	void enterBasic_type(MxstarParser.Basic_typeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#basic_type}.
	 * @param ctx the parse tree
	 */
	void exitBasic_type(MxstarParser.Basic_typeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#func_type}.
	 * @param ctx the parse tree
	 */
	void enterFunc_type(MxstarParser.Func_typeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#func_type}.
	 * @param ctx the parse tree
	 */
	void exitFunc_type(MxstarParser.Func_typeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStatement(MxstarParser.StatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStatement(MxstarParser.StatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#expression_stmt}.
	 * @param ctx the parse tree
	 */
	void enterExpression_stmt(MxstarParser.Expression_stmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#expression_stmt}.
	 * @param ctx the parse tree
	 */
	void exitExpression_stmt(MxstarParser.Expression_stmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#if_stmt}.
	 * @param ctx the parse tree
	 */
	void enterIf_stmt(MxstarParser.If_stmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#if_stmt}.
	 * @param ctx the parse tree
	 */
	void exitIf_stmt(MxstarParser.If_stmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#else_stmt}.
	 * @param ctx the parse tree
	 */
	void enterElse_stmt(MxstarParser.Else_stmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#else_stmt}.
	 * @param ctx the parse tree
	 */
	void exitElse_stmt(MxstarParser.Else_stmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#suite_statement}.
	 * @param ctx the parse tree
	 */
	void enterSuite_statement(MxstarParser.Suite_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#suite_statement}.
	 * @param ctx the parse tree
	 */
	void exitSuite_statement(MxstarParser.Suite_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#while_stmt}.
	 * @param ctx the parse tree
	 */
	void enterWhile_stmt(MxstarParser.While_stmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#while_stmt}.
	 * @param ctx the parse tree
	 */
	void exitWhile_stmt(MxstarParser.While_stmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#for_stmt}.
	 * @param ctx the parse tree
	 */
	void enterFor_stmt(MxstarParser.For_stmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#for_stmt}.
	 * @param ctx the parse tree
	 */
	void exitFor_stmt(MxstarParser.For_stmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#for_start}.
	 * @param ctx the parse tree
	 */
	void enterFor_start(MxstarParser.For_startContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#for_start}.
	 * @param ctx the parse tree
	 */
	void exitFor_start(MxstarParser.For_startContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#for_finish}.
	 * @param ctx the parse tree
	 */
	void enterFor_finish(MxstarParser.For_finishContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#for_finish}.
	 * @param ctx the parse tree
	 */
	void exitFor_finish(MxstarParser.For_finishContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#return_stmt}.
	 * @param ctx the parse tree
	 */
	void enterReturn_stmt(MxstarParser.Return_stmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#return_stmt}.
	 * @param ctx the parse tree
	 */
	void exitReturn_stmt(MxstarParser.Return_stmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#continue_stmt}.
	 * @param ctx the parse tree
	 */
	void enterContinue_stmt(MxstarParser.Continue_stmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#continue_stmt}.
	 * @param ctx the parse tree
	 */
	void exitContinue_stmt(MxstarParser.Continue_stmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#break_stmt}.
	 * @param ctx the parse tree
	 */
	void enterBreak_stmt(MxstarParser.Break_stmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#break_stmt}.
	 * @param ctx the parse tree
	 */
	void exitBreak_stmt(MxstarParser.Break_stmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#newor}.
	 * @param ctx the parse tree
	 */
	void enterNewor(MxstarParser.NeworContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#newor}.
	 * @param ctx the parse tree
	 */
	void exitNewor(MxstarParser.NeworContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#creator_size}.
	 * @param ctx the parse tree
	 */
	void enterCreator_size(MxstarParser.Creator_sizeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#creator_size}.
	 * @param ctx the parse tree
	 */
	void exitCreator_size(MxstarParser.Creator_sizeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#lambada}.
	 * @param ctx the parse tree
	 */
	void enterLambada(MxstarParser.LambadaContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#lambada}.
	 * @param ctx the parse tree
	 */
	void exitLambada(MxstarParser.LambadaContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxstarParser#sentence_list}.
	 * @param ctx the parse tree
	 */
	void enterSentence_list(MxstarParser.Sentence_listContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxstarParser#sentence_list}.
	 * @param ctx the parse tree
	 */
	void exitSentence_list(MxstarParser.Sentence_listContext ctx);
	/**
	 * Enter a parse tree produced by the {@code unaryexpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterUnaryexpr(MxstarParser.UnaryexprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code unaryexpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitUnaryexpr(MxstarParser.UnaryexprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code hanshudiaoyong}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterHanshudiaoyong(MxstarParser.HanshudiaoyongContext ctx);
	/**
	 * Exit a parse tree produced by the {@code hanshudiaoyong}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitHanshudiaoyong(MxstarParser.HanshudiaoyongContext ctx);
	/**
	 * Enter a parse tree produced by the {@code basicexpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterBasicexpr(MxstarParser.BasicexprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code basicexpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitBasicexpr(MxstarParser.BasicexprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code lambadaexpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterLambadaexpr(MxstarParser.LambadaexprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code lambadaexpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitLambadaexpr(MxstarParser.LambadaexprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code backPLUSMINUS}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterBackPLUSMINUS(MxstarParser.BackPLUSMINUSContext ctx);
	/**
	 * Exit a parse tree produced by the {@code backPLUSMINUS}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitBackPLUSMINUS(MxstarParser.BackPLUSMINUSContext ctx);
	/**
	 * Enter a parse tree produced by the {@code newexpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterNewexpr(MxstarParser.NewexprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code newexpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitNewexpr(MxstarParser.NewexprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code arrayexpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterArrayexpr(MxstarParser.ArrayexprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code arrayexpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitArrayexpr(MxstarParser.ArrayexprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code prePLUSMINUS}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterPrePLUSMINUS(MxstarParser.PrePLUSMINUSContext ctx);
	/**
	 * Exit a parse tree produced by the {@code prePLUSMINUS}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitPrePLUSMINUS(MxstarParser.PrePLUSMINUSContext ctx);
	/**
	 * Enter a parse tree produced by the {@code binaryexpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterBinaryexpr(MxstarParser.BinaryexprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code binaryexpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitBinaryexpr(MxstarParser.BinaryexprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code bracketxpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterBracketxpr(MxstarParser.BracketxprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code bracketxpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitBracketxpr(MxstarParser.BracketxprContext ctx);
}