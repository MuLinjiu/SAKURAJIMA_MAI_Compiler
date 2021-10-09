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
	 * Visit a parse tree produced by {@link MxstarParser#control_stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitControl_stmt(MxstarParser.Control_stmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxstarParser#newor}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewor(MxstarParser.NeworContext ctx);
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
	 * Visit a parse tree produced by {@link MxstarParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpression(MxstarParser.ExpressionContext ctx);
}