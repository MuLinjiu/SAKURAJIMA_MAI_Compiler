// Generated from /Users/mulinjiu/Desktop/HXL/MxCompiler/src/Parser/Mxstar.g4 by ANTLR 4.9.1
package Parser;
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link MxstarParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface MxstarVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link MxstarParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(MxstarParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#define}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDefine(MxstarParser.DefineContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#global_var_def_stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitGlobal_var_def_stmt(MxstarParser.Global_var_def_stmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#class_define}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClass_define(MxstarParser.Class_defineContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#constructor_define}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConstructor_define(MxstarParser.Constructor_defineContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#suite}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSuite(MxstarParser.SuiteContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#block}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBlock(MxstarParser.BlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#parameter_list}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParameter_list(MxstarParser.Parameter_listContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#parameter}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParameter(MxstarParser.ParameterContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#function_define}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunction_define(MxstarParser.Function_defineContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#var_define_youfen}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVar_define_youfen(MxstarParser.Var_define_youfenContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#var_define_wufen}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVar_define_wufen(MxstarParser.Var_define_wufenContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#var_define_sentence}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVar_define_sentence(MxstarParser.Var_define_sentenceContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitType(MxstarParser.TypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#basic_type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBasic_type(MxstarParser.Basic_typeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#func_type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunc_type(MxstarParser.Func_typeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStatement(MxstarParser.StatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#expression_stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpression_stmt(MxstarParser.Expression_stmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#if_stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIf_stmt(MxstarParser.If_stmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#else_stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitElse_stmt(MxstarParser.Else_stmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#suite_statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSuite_statement(MxstarParser.Suite_statementContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#while_stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWhile_stmt(MxstarParser.While_stmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#for_stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFor_stmt(MxstarParser.For_stmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#for_start}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFor_start(MxstarParser.For_startContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#for_finish}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFor_finish(MxstarParser.For_finishContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#return_stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitReturn_stmt(MxstarParser.Return_stmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#continue_stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitContinue_stmt(MxstarParser.Continue_stmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#break_stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBreak_stmt(MxstarParser.Break_stmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#newor}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewor(MxstarParser.NeworContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#creator_size}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCreator_size(MxstarParser.Creator_sizeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#lambada}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLambada(MxstarParser.LambadaContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#sentence_list}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSentence_list(MxstarParser.Sentence_listContext ctx);
	/**
	 * Visit a parse tree produced by the {@code unaryexpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitUnaryexpr(MxstarParser.UnaryexprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code hanshudiaoyong}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitHanshudiaoyong(MxstarParser.HanshudiaoyongContext ctx);
	/**
	 * Visit a parse tree produced by the {@code basicexpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBasicexpr(MxstarParser.BasicexprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code lambadaexpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLambadaexpr(MxstarParser.LambadaexprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code backPLUSMINUS}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBackPLUSMINUS(MxstarParser.BackPLUSMINUSContext ctx);
	/**
	 * Visit a parse tree produced by the {@code newexpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewexpr(MxstarParser.NewexprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code arrayexpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArrayexpr(MxstarParser.ArrayexprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code binaryexpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBinaryexpr(MxstarParser.BinaryexprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code prePLUSMINUS}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrePLUSMINUS(MxstarParser.PrePLUSMINUSContext ctx);
	/**
	 * Visit a parse tree produced by the {@code bracketxpr}
	 * labeled alternative in {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBracketxpr(MxstarParser.BracketxprContext ctx);
}