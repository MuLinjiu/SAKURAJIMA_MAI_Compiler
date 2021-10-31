// Generated from /Users/mulinjiu/Desktop/HXL/MxCompiler/src/Parser/Mxstar.g4 by ANTLR 4.9.1
package Parser;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MxstarParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.9.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		ADD=1, MINUS=2, STAR=3, DIVIDE=4, MOD=5, LESS=6, GREATER=7, EQUAL=8, LESS_E=9, 
		GREATER_E=10, NOT_EQUAL=11, AND_AND=12, OR_OR=13, NOT=14, INT=15, BOOL=16, 
		STRING=17, NULL=18, VOID=19, IF=20, ELSE=21, FOR=22, WHILE=23, BREAK=24, 
		CONITNUE=25, RETURN=26, NEW=27, CLASS=28, THIS=29, LAMBDA_START=30, DOT=31, 
		COMMA=32, SEMI=33, ARROW=34, ASSIGN=35, SELF_PLUS=36, SELF_MINUS=37, LEFT_PAREN=38, 
		RIGHT_PAREN=39, LEFT_BRACK=40, RIGHT_BRACK=41, LEFT_BRACE=42, RIGHT_BRACE=43, 
		LEFT_SHIFT=44, RIGHT_SHIFT=45, OR=46, XOR=47, AND=48, FAN=49, BOOL_CHOICE=50, 
		INT_CHOICE=51, STRING_CHOICE=52, Identifier=53, BlockComment=54, BlankChar=55, 
		LineComment=56;
	public static final int
		RULE_program = 0, RULE_define = 1, RULE_global_var_def_stmt = 2, RULE_class_define = 3, 
		RULE_constructor_define = 4, RULE_suite = 5, RULE_block = 6, RULE_parameter_list = 7, 
		RULE_parameter = 8, RULE_function_define = 9, RULE_var_define_youfen = 10, 
		RULE_var_define_wufen = 11, RULE_var_define_sentence = 12, RULE_type = 13, 
		RULE_basic_type = 14, RULE_func_type = 15, RULE_statement = 16, RULE_expression_stmt = 17, 
		RULE_if_stmt = 18, RULE_else_stmt = 19, RULE_suite_statement = 20, RULE_while_stmt = 21, 
		RULE_for_stmt = 22, RULE_for_start = 23, RULE_for_finish = 24, RULE_return_stmt = 25, 
		RULE_continue_stmt = 26, RULE_break_stmt = 27, RULE_newor = 28, RULE_creator_size = 29, 
		RULE_lambada = 30, RULE_sentence_list = 31, RULE_expression = 32;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "define", "global_var_def_stmt", "class_define", "constructor_define", 
			"suite", "block", "parameter_list", "parameter", "function_define", "var_define_youfen", 
			"var_define_wufen", "var_define_sentence", "type", "basic_type", "func_type", 
			"statement", "expression_stmt", "if_stmt", "else_stmt", "suite_statement", 
			"while_stmt", "for_stmt", "for_start", "for_finish", "return_stmt", "continue_stmt", 
			"break_stmt", "newor", "creator_size", "lambada", "sentence_list", "expression"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'+'", "'-'", "'*'", "'/'", "'%'", "'<'", "'>'", "'=='", "'<='", 
			"'>='", "'!='", "'&&'", "'||'", "'!'", "'int'", "'bool'", "'string'", 
			"'null'", "'void'", "'if'", "'else'", "'for'", "'while'", "'break'", 
			"'continue'", "'return'", "'new'", "'class'", "'this'", "'[&]'", "'.'", 
			"','", "';'", "'->'", "'='", "'++'", "'--'", "'('", "')'", "'['", "']'", 
			"'{'", "'}'", "'<<'", "'>>'", "'|'", "'^'", "'&'", "'~'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, "ADD", "MINUS", "STAR", "DIVIDE", "MOD", "LESS", "GREATER", "EQUAL", 
			"LESS_E", "GREATER_E", "NOT_EQUAL", "AND_AND", "OR_OR", "NOT", "INT", 
			"BOOL", "STRING", "NULL", "VOID", "IF", "ELSE", "FOR", "WHILE", "BREAK", 
			"CONITNUE", "RETURN", "NEW", "CLASS", "THIS", "LAMBDA_START", "DOT", 
			"COMMA", "SEMI", "ARROW", "ASSIGN", "SELF_PLUS", "SELF_MINUS", "LEFT_PAREN", 
			"RIGHT_PAREN", "LEFT_BRACK", "RIGHT_BRACK", "LEFT_BRACE", "RIGHT_BRACE", 
			"LEFT_SHIFT", "RIGHT_SHIFT", "OR", "XOR", "AND", "FAN", "BOOL_CHOICE", 
			"INT_CHOICE", "STRING_CHOICE", "Identifier", "BlockComment", "BlankChar", 
			"LineComment"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Mxstar.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public MxstarParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class ProgramContext extends ParserRuleContext {
		public TerminalNode EOF() { return getToken(MxstarParser.EOF, 0); }
		public List<DefineContext> define() {
			return getRuleContexts(DefineContext.class);
		}
		public DefineContext define(int i) {
			return getRuleContext(DefineContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterProgram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitProgram(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitProgram(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(69);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << INT) | (1L << BOOL) | (1L << STRING) | (1L << VOID) | (1L << CLASS) | (1L << Identifier))) != 0)) {
				{
				{
				setState(66);
				define();
				}
				}
				setState(71);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(72);
			match(EOF);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DefineContext extends ParserRuleContext {
		public Class_defineContext class_define() {
			return getRuleContext(Class_defineContext.class,0);
		}
		public Function_defineContext function_define() {
			return getRuleContext(Function_defineContext.class,0);
		}
		public Global_var_def_stmtContext global_var_def_stmt() {
			return getRuleContext(Global_var_def_stmtContext.class,0);
		}
		public DefineContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_define; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterDefine(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitDefine(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitDefine(this);
			else return visitor.visitChildren(this);
		}
	}

	public final DefineContext define() throws RecognitionException {
		DefineContext _localctx = new DefineContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_define);
		try {
			setState(77);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,1,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(74);
				class_define();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(75);
				function_define();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(76);
				global_var_def_stmt();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Global_var_def_stmtContext extends ParserRuleContext {
		public Var_define_wufenContext var_define_wufen() {
			return getRuleContext(Var_define_wufenContext.class,0);
		}
		public TerminalNode SEMI() { return getToken(MxstarParser.SEMI, 0); }
		public Global_var_def_stmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_global_var_def_stmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterGlobal_var_def_stmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitGlobal_var_def_stmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitGlobal_var_def_stmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Global_var_def_stmtContext global_var_def_stmt() throws RecognitionException {
		Global_var_def_stmtContext _localctx = new Global_var_def_stmtContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_global_var_def_stmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(79);
			var_define_wufen();
			setState(80);
			match(SEMI);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Class_defineContext extends ParserRuleContext {
		public TerminalNode CLASS() { return getToken(MxstarParser.CLASS, 0); }
		public TerminalNode Identifier() { return getToken(MxstarParser.Identifier, 0); }
		public TerminalNode LEFT_BRACE() { return getToken(MxstarParser.LEFT_BRACE, 0); }
		public TerminalNode RIGHT_BRACE() { return getToken(MxstarParser.RIGHT_BRACE, 0); }
		public TerminalNode SEMI() { return getToken(MxstarParser.SEMI, 0); }
		public Constructor_defineContext constructor_define() {
			return getRuleContext(Constructor_defineContext.class,0);
		}
		public List<Var_define_youfenContext> var_define_youfen() {
			return getRuleContexts(Var_define_youfenContext.class);
		}
		public Var_define_youfenContext var_define_youfen(int i) {
			return getRuleContext(Var_define_youfenContext.class,i);
		}
		public List<Function_defineContext> function_define() {
			return getRuleContexts(Function_defineContext.class);
		}
		public Function_defineContext function_define(int i) {
			return getRuleContext(Function_defineContext.class,i);
		}
		public Class_defineContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_class_define; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterClass_define(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitClass_define(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitClass_define(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Class_defineContext class_define() throws RecognitionException {
		Class_defineContext _localctx = new Class_defineContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_class_define);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(82);
			match(CLASS);
			setState(83);
			match(Identifier);
			setState(84);
			match(LEFT_BRACE);
			setState(86);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,2,_ctx) ) {
			case 1:
				{
				setState(85);
				constructor_define();
				}
				break;
			}
			setState(92);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << INT) | (1L << BOOL) | (1L << STRING) | (1L << VOID) | (1L << Identifier))) != 0)) {
				{
				setState(90);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,3,_ctx) ) {
				case 1:
					{
					setState(88);
					var_define_youfen();
					}
					break;
				case 2:
					{
					setState(89);
					function_define();
					}
					break;
				}
				}
				setState(94);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(95);
			match(RIGHT_BRACE);
			setState(96);
			match(SEMI);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Constructor_defineContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(MxstarParser.Identifier, 0); }
		public TerminalNode LEFT_PAREN() { return getToken(MxstarParser.LEFT_PAREN, 0); }
		public TerminalNode RIGHT_PAREN() { return getToken(MxstarParser.RIGHT_PAREN, 0); }
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public Constructor_defineContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_constructor_define; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterConstructor_define(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitConstructor_define(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitConstructor_define(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Constructor_defineContext constructor_define() throws RecognitionException {
		Constructor_defineContext _localctx = new Constructor_defineContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_constructor_define);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(98);
			match(Identifier);
			setState(99);
			match(LEFT_PAREN);
			setState(100);
			match(RIGHT_PAREN);
			setState(101);
			suite();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SuiteContext extends ParserRuleContext {
		public TerminalNode LEFT_BRACE() { return getToken(MxstarParser.LEFT_BRACE, 0); }
		public TerminalNode RIGHT_BRACE() { return getToken(MxstarParser.RIGHT_BRACE, 0); }
		public List<BlockContext> block() {
			return getRuleContexts(BlockContext.class);
		}
		public BlockContext block(int i) {
			return getRuleContext(BlockContext.class,i);
		}
		public SuiteContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_suite; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterSuite(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitSuite(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitSuite(this);
			else return visitor.visitChildren(this);
		}
	}

	public final SuiteContext suite() throws RecognitionException {
		SuiteContext _localctx = new SuiteContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_suite);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(103);
			match(LEFT_BRACE);
			setState(107);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << ADD) | (1L << MINUS) | (1L << NOT) | (1L << INT) | (1L << BOOL) | (1L << STRING) | (1L << NULL) | (1L << IF) | (1L << FOR) | (1L << WHILE) | (1L << BREAK) | (1L << CONITNUE) | (1L << RETURN) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA_START) | (1L << SEMI) | (1L << SELF_PLUS) | (1L << SELF_MINUS) | (1L << LEFT_PAREN) | (1L << LEFT_BRACE) | (1L << FAN) | (1L << BOOL_CHOICE) | (1L << INT_CHOICE) | (1L << STRING_CHOICE) | (1L << Identifier))) != 0)) {
				{
				{
				setState(104);
				block();
				}
				}
				setState(109);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(110);
			match(RIGHT_BRACE);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BlockContext extends ParserRuleContext {
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public TerminalNode SEMI() { return getToken(MxstarParser.SEMI, 0); }
		public BlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_block; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterBlock(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitBlock(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitBlock(this);
			else return visitor.visitChildren(this);
		}
	}

	public final BlockContext block() throws RecognitionException {
		BlockContext _localctx = new BlockContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_block);
		try {
			setState(115);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case ADD:
			case MINUS:
			case NOT:
			case INT:
			case BOOL:
			case STRING:
			case NULL:
			case IF:
			case FOR:
			case WHILE:
			case BREAK:
			case CONITNUE:
			case RETURN:
			case NEW:
			case THIS:
			case LAMBDA_START:
			case SELF_PLUS:
			case SELF_MINUS:
			case LEFT_PAREN:
			case FAN:
			case BOOL_CHOICE:
			case INT_CHOICE:
			case STRING_CHOICE:
			case Identifier:
				enterOuterAlt(_localctx, 1);
				{
				setState(112);
				statement();
				}
				break;
			case LEFT_BRACE:
				enterOuterAlt(_localctx, 2);
				{
				setState(113);
				suite();
				}
				break;
			case SEMI:
				enterOuterAlt(_localctx, 3);
				{
				setState(114);
				match(SEMI);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Parameter_listContext extends ParserRuleContext {
		public TerminalNode LEFT_PAREN() { return getToken(MxstarParser.LEFT_PAREN, 0); }
		public TerminalNode RIGHT_PAREN() { return getToken(MxstarParser.RIGHT_PAREN, 0); }
		public List<ParameterContext> parameter() {
			return getRuleContexts(ParameterContext.class);
		}
		public ParameterContext parameter(int i) {
			return getRuleContext(ParameterContext.class,i);
		}
		public List<TerminalNode> COMMA() { return getTokens(MxstarParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(MxstarParser.COMMA, i);
		}
		public Parameter_listContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_parameter_list; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterParameter_list(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitParameter_list(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitParameter_list(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Parameter_listContext parameter_list() throws RecognitionException {
		Parameter_listContext _localctx = new Parameter_listContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_parameter_list);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(117);
			match(LEFT_PAREN);
			setState(126);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << INT) | (1L << BOOL) | (1L << STRING) | (1L << Identifier))) != 0)) {
				{
				setState(118);
				parameter();
				setState(123);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMMA) {
					{
					{
					setState(119);
					match(COMMA);
					setState(120);
					parameter();
					}
					}
					setState(125);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(128);
			match(RIGHT_PAREN);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ParameterContext extends ParserRuleContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxstarParser.Identifier, 0); }
		public ParameterContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_parameter; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterParameter(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitParameter(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitParameter(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ParameterContext parameter() throws RecognitionException {
		ParameterContext _localctx = new ParameterContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_parameter);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(130);
			type();
			setState(131);
			match(Identifier);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Function_defineContext extends ParserRuleContext {
		public Func_typeContext func_type() {
			return getRuleContext(Func_typeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxstarParser.Identifier, 0); }
		public Parameter_listContext parameter_list() {
			return getRuleContext(Parameter_listContext.class,0);
		}
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public Function_defineContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_function_define; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterFunction_define(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitFunction_define(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitFunction_define(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Function_defineContext function_define() throws RecognitionException {
		Function_defineContext _localctx = new Function_defineContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_function_define);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(133);
			func_type();
			setState(134);
			match(Identifier);
			setState(135);
			parameter_list();
			setState(136);
			suite();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Var_define_youfenContext extends ParserRuleContext {
		public Var_define_wufenContext var_define_wufen() {
			return getRuleContext(Var_define_wufenContext.class,0);
		}
		public TerminalNode SEMI() { return getToken(MxstarParser.SEMI, 0); }
		public Var_define_youfenContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_var_define_youfen; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterVar_define_youfen(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitVar_define_youfen(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitVar_define_youfen(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Var_define_youfenContext var_define_youfen() throws RecognitionException {
		Var_define_youfenContext _localctx = new Var_define_youfenContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_var_define_youfen);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(138);
			var_define_wufen();
			setState(139);
			match(SEMI);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Var_define_wufenContext extends ParserRuleContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public List<Var_define_sentenceContext> var_define_sentence() {
			return getRuleContexts(Var_define_sentenceContext.class);
		}
		public Var_define_sentenceContext var_define_sentence(int i) {
			return getRuleContext(Var_define_sentenceContext.class,i);
		}
		public List<TerminalNode> COMMA() { return getTokens(MxstarParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(MxstarParser.COMMA, i);
		}
		public Var_define_wufenContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_var_define_wufen; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterVar_define_wufen(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitVar_define_wufen(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitVar_define_wufen(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Var_define_wufenContext var_define_wufen() throws RecognitionException {
		Var_define_wufenContext _localctx = new Var_define_wufenContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_var_define_wufen);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(141);
			type();
			setState(142);
			var_define_sentence();
			setState(147);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(143);
				match(COMMA);
				setState(144);
				var_define_sentence();
				}
				}
				setState(149);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Var_define_sentenceContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(MxstarParser.Identifier, 0); }
		public TerminalNode ASSIGN() { return getToken(MxstarParser.ASSIGN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public Var_define_sentenceContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_var_define_sentence; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterVar_define_sentence(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitVar_define_sentence(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitVar_define_sentence(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Var_define_sentenceContext var_define_sentence() throws RecognitionException {
		Var_define_sentenceContext _localctx = new Var_define_sentenceContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_var_define_sentence);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(150);
			match(Identifier);
			setState(153);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ASSIGN) {
				{
				setState(151);
				match(ASSIGN);
				setState(152);
				expression(0);
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TypeContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(MxstarParser.Identifier, 0); }
		public Basic_typeContext basic_type() {
			return getRuleContext(Basic_typeContext.class,0);
		}
		public List<TerminalNode> LEFT_BRACK() { return getTokens(MxstarParser.LEFT_BRACK); }
		public TerminalNode LEFT_BRACK(int i) {
			return getToken(MxstarParser.LEFT_BRACK, i);
		}
		public List<TerminalNode> RIGHT_BRACK() { return getTokens(MxstarParser.RIGHT_BRACK); }
		public TerminalNode RIGHT_BRACK(int i) {
			return getToken(MxstarParser.RIGHT_BRACK, i);
		}
		public TypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_type; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitType(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitType(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TypeContext type() throws RecognitionException {
		TypeContext _localctx = new TypeContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_type);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(157);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Identifier:
				{
				setState(155);
				match(Identifier);
				}
				break;
			case INT:
			case BOOL:
			case STRING:
				{
				setState(156);
				basic_type();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(163);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==LEFT_BRACK) {
				{
				{
				setState(159);
				match(LEFT_BRACK);
				setState(160);
				match(RIGHT_BRACK);
				}
				}
				setState(165);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Basic_typeContext extends ParserRuleContext {
		public TerminalNode INT() { return getToken(MxstarParser.INT, 0); }
		public TerminalNode BOOL() { return getToken(MxstarParser.BOOL, 0); }
		public TerminalNode STRING() { return getToken(MxstarParser.STRING, 0); }
		public Basic_typeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_basic_type; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterBasic_type(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitBasic_type(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitBasic_type(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Basic_typeContext basic_type() throws RecognitionException {
		Basic_typeContext _localctx = new Basic_typeContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_basic_type);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(166);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << INT) | (1L << BOOL) | (1L << STRING))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Func_typeContext extends ParserRuleContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode VOID() { return getToken(MxstarParser.VOID, 0); }
		public Func_typeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_func_type; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterFunc_type(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitFunc_type(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitFunc_type(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Func_typeContext func_type() throws RecognitionException {
		Func_typeContext _localctx = new Func_typeContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_func_type);
		try {
			setState(170);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case INT:
			case BOOL:
			case STRING:
			case Identifier:
				enterOuterAlt(_localctx, 1);
				{
				setState(168);
				type();
				}
				break;
			case VOID:
				enterOuterAlt(_localctx, 2);
				{
				setState(169);
				match(VOID);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StatementContext extends ParserRuleContext {
		public Var_define_youfenContext var_define_youfen() {
			return getRuleContext(Var_define_youfenContext.class,0);
		}
		public Expression_stmtContext expression_stmt() {
			return getRuleContext(Expression_stmtContext.class,0);
		}
		public If_stmtContext if_stmt() {
			return getRuleContext(If_stmtContext.class,0);
		}
		public While_stmtContext while_stmt() {
			return getRuleContext(While_stmtContext.class,0);
		}
		public For_stmtContext for_stmt() {
			return getRuleContext(For_stmtContext.class,0);
		}
		public Return_stmtContext return_stmt() {
			return getRuleContext(Return_stmtContext.class,0);
		}
		public Continue_stmtContext continue_stmt() {
			return getRuleContext(Continue_stmtContext.class,0);
		}
		public Break_stmtContext break_stmt() {
			return getRuleContext(Break_stmtContext.class,0);
		}
		public StatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitStatement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_statement);
		try {
			setState(180);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,14,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(172);
				var_define_youfen();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(173);
				expression_stmt();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(174);
				if_stmt();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(175);
				while_stmt();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(176);
				for_stmt();
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(177);
				return_stmt();
				}
				break;
			case 7:
				enterOuterAlt(_localctx, 7);
				{
				setState(178);
				continue_stmt();
				}
				break;
			case 8:
				enterOuterAlt(_localctx, 8);
				{
				setState(179);
				break_stmt();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Expression_stmtContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode SEMI() { return getToken(MxstarParser.SEMI, 0); }
		public Expression_stmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression_stmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterExpression_stmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitExpression_stmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitExpression_stmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Expression_stmtContext expression_stmt() throws RecognitionException {
		Expression_stmtContext _localctx = new Expression_stmtContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_expression_stmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(182);
			expression(0);
			setState(183);
			match(SEMI);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class If_stmtContext extends ParserRuleContext {
		public TerminalNode IF() { return getToken(MxstarParser.IF, 0); }
		public TerminalNode LEFT_PAREN() { return getToken(MxstarParser.LEFT_PAREN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode RIGHT_PAREN() { return getToken(MxstarParser.RIGHT_PAREN, 0); }
		public Suite_statementContext suite_statement() {
			return getRuleContext(Suite_statementContext.class,0);
		}
		public Else_stmtContext else_stmt() {
			return getRuleContext(Else_stmtContext.class,0);
		}
		public If_stmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_if_stmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterIf_stmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitIf_stmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitIf_stmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final If_stmtContext if_stmt() throws RecognitionException {
		If_stmtContext _localctx = new If_stmtContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_if_stmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(185);
			match(IF);
			setState(186);
			match(LEFT_PAREN);
			setState(187);
			expression(0);
			setState(188);
			match(RIGHT_PAREN);
			setState(189);
			suite_statement();
			setState(191);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,15,_ctx) ) {
			case 1:
				{
				setState(190);
				else_stmt();
				}
				break;
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Else_stmtContext extends ParserRuleContext {
		public TerminalNode ELSE() { return getToken(MxstarParser.ELSE, 0); }
		public Suite_statementContext suite_statement() {
			return getRuleContext(Suite_statementContext.class,0);
		}
		public Else_stmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_else_stmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterElse_stmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitElse_stmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitElse_stmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Else_stmtContext else_stmt() throws RecognitionException {
		Else_stmtContext _localctx = new Else_stmtContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_else_stmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			{
			setState(193);
			match(ELSE);
			setState(194);
			suite_statement();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Suite_statementContext extends ParserRuleContext {
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public TerminalNode SEMI() { return getToken(MxstarParser.SEMI, 0); }
		public Suite_statementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_suite_statement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterSuite_statement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitSuite_statement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitSuite_statement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Suite_statementContext suite_statement() throws RecognitionException {
		Suite_statementContext _localctx = new Suite_statementContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_suite_statement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(199);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case LEFT_BRACE:
				{
				setState(196);
				suite();
				}
				break;
			case ADD:
			case MINUS:
			case NOT:
			case INT:
			case BOOL:
			case STRING:
			case NULL:
			case IF:
			case FOR:
			case WHILE:
			case BREAK:
			case CONITNUE:
			case RETURN:
			case NEW:
			case THIS:
			case LAMBDA_START:
			case SELF_PLUS:
			case SELF_MINUS:
			case LEFT_PAREN:
			case FAN:
			case BOOL_CHOICE:
			case INT_CHOICE:
			case STRING_CHOICE:
			case Identifier:
				{
				setState(197);
				statement();
				}
				break;
			case SEMI:
				{
				setState(198);
				match(SEMI);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class While_stmtContext extends ParserRuleContext {
		public TerminalNode WHILE() { return getToken(MxstarParser.WHILE, 0); }
		public TerminalNode LEFT_PAREN() { return getToken(MxstarParser.LEFT_PAREN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode RIGHT_PAREN() { return getToken(MxstarParser.RIGHT_PAREN, 0); }
		public Suite_statementContext suite_statement() {
			return getRuleContext(Suite_statementContext.class,0);
		}
		public While_stmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_while_stmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterWhile_stmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitWhile_stmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitWhile_stmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final While_stmtContext while_stmt() throws RecognitionException {
		While_stmtContext _localctx = new While_stmtContext(_ctx, getState());
		enterRule(_localctx, 42, RULE_while_stmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(201);
			match(WHILE);
			setState(202);
			match(LEFT_PAREN);
			setState(203);
			expression(0);
			setState(204);
			match(RIGHT_PAREN);
			setState(205);
			suite_statement();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class For_stmtContext extends ParserRuleContext {
		public TerminalNode FOR() { return getToken(MxstarParser.FOR, 0); }
		public TerminalNode LEFT_PAREN() { return getToken(MxstarParser.LEFT_PAREN, 0); }
		public List<TerminalNode> SEMI() { return getTokens(MxstarParser.SEMI); }
		public TerminalNode SEMI(int i) {
			return getToken(MxstarParser.SEMI, i);
		}
		public TerminalNode RIGHT_PAREN() { return getToken(MxstarParser.RIGHT_PAREN, 0); }
		public Suite_statementContext suite_statement() {
			return getRuleContext(Suite_statementContext.class,0);
		}
		public For_startContext for_start() {
			return getRuleContext(For_startContext.class,0);
		}
		public For_finishContext for_finish() {
			return getRuleContext(For_finishContext.class,0);
		}
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public For_stmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_for_stmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterFor_stmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitFor_stmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitFor_stmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final For_stmtContext for_stmt() throws RecognitionException {
		For_stmtContext _localctx = new For_stmtContext(_ctx, getState());
		enterRule(_localctx, 44, RULE_for_stmt);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(207);
			match(FOR);
			setState(208);
			match(LEFT_PAREN);
			setState(210);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << ADD) | (1L << MINUS) | (1L << NOT) | (1L << INT) | (1L << BOOL) | (1L << STRING) | (1L << NULL) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA_START) | (1L << SELF_PLUS) | (1L << SELF_MINUS) | (1L << LEFT_PAREN) | (1L << FAN) | (1L << BOOL_CHOICE) | (1L << INT_CHOICE) | (1L << STRING_CHOICE) | (1L << Identifier))) != 0)) {
				{
				setState(209);
				for_start();
				}
			}

			setState(212);
			match(SEMI);
			setState(214);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << ADD) | (1L << MINUS) | (1L << NOT) | (1L << NULL) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA_START) | (1L << SELF_PLUS) | (1L << SELF_MINUS) | (1L << LEFT_PAREN) | (1L << FAN) | (1L << BOOL_CHOICE) | (1L << INT_CHOICE) | (1L << STRING_CHOICE) | (1L << Identifier))) != 0)) {
				{
				setState(213);
				for_finish();
				}
			}

			setState(216);
			match(SEMI);
			setState(218);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << ADD) | (1L << MINUS) | (1L << NOT) | (1L << NULL) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA_START) | (1L << SELF_PLUS) | (1L << SELF_MINUS) | (1L << LEFT_PAREN) | (1L << FAN) | (1L << BOOL_CHOICE) | (1L << INT_CHOICE) | (1L << STRING_CHOICE) | (1L << Identifier))) != 0)) {
				{
				setState(217);
				expression(0);
				}
			}

			setState(220);
			match(RIGHT_PAREN);
			setState(221);
			suite_statement();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class For_startContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public Var_define_wufenContext var_define_wufen() {
			return getRuleContext(Var_define_wufenContext.class,0);
		}
		public For_startContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_for_start; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterFor_start(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitFor_start(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitFor_start(this);
			else return visitor.visitChildren(this);
		}
	}

	public final For_startContext for_start() throws RecognitionException {
		For_startContext _localctx = new For_startContext(_ctx, getState());
		enterRule(_localctx, 46, RULE_for_start);
		try {
			setState(225);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,20,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(223);
				expression(0);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(224);
				var_define_wufen();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class For_finishContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public For_finishContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_for_finish; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterFor_finish(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitFor_finish(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitFor_finish(this);
			else return visitor.visitChildren(this);
		}
	}

	public final For_finishContext for_finish() throws RecognitionException {
		For_finishContext _localctx = new For_finishContext(_ctx, getState());
		enterRule(_localctx, 48, RULE_for_finish);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(227);
			expression(0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Return_stmtContext extends ParserRuleContext {
		public TerminalNode RETURN() { return getToken(MxstarParser.RETURN, 0); }
		public TerminalNode SEMI() { return getToken(MxstarParser.SEMI, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public Return_stmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_return_stmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterReturn_stmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitReturn_stmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitReturn_stmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Return_stmtContext return_stmt() throws RecognitionException {
		Return_stmtContext _localctx = new Return_stmtContext(_ctx, getState());
		enterRule(_localctx, 50, RULE_return_stmt);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(229);
			match(RETURN);
			setState(231);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << ADD) | (1L << MINUS) | (1L << NOT) | (1L << NULL) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA_START) | (1L << SELF_PLUS) | (1L << SELF_MINUS) | (1L << LEFT_PAREN) | (1L << FAN) | (1L << BOOL_CHOICE) | (1L << INT_CHOICE) | (1L << STRING_CHOICE) | (1L << Identifier))) != 0)) {
				{
				setState(230);
				expression(0);
				}
			}

			setState(233);
			match(SEMI);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Continue_stmtContext extends ParserRuleContext {
		public TerminalNode CONITNUE() { return getToken(MxstarParser.CONITNUE, 0); }
		public Continue_stmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_continue_stmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterContinue_stmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitContinue_stmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitContinue_stmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Continue_stmtContext continue_stmt() throws RecognitionException {
		Continue_stmtContext _localctx = new Continue_stmtContext(_ctx, getState());
		enterRule(_localctx, 52, RULE_continue_stmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(235);
			match(CONITNUE);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Break_stmtContext extends ParserRuleContext {
		public TerminalNode BREAK() { return getToken(MxstarParser.BREAK, 0); }
		public Break_stmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_break_stmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterBreak_stmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitBreak_stmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitBreak_stmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Break_stmtContext break_stmt() throws RecognitionException {
		Break_stmtContext _localctx = new Break_stmtContext(_ctx, getState());
		enterRule(_localctx, 54, RULE_break_stmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(237);
			match(BREAK);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class NeworContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(MxstarParser.Identifier, 0); }
		public Basic_typeContext basic_type() {
			return getRuleContext(Basic_typeContext.class,0);
		}
		public TerminalNode LEFT_PAREN() { return getToken(MxstarParser.LEFT_PAREN, 0); }
		public TerminalNode RIGHT_PAREN() { return getToken(MxstarParser.RIGHT_PAREN, 0); }
		public List<Creator_sizeContext> creator_size() {
			return getRuleContexts(Creator_sizeContext.class);
		}
		public Creator_sizeContext creator_size(int i) {
			return getRuleContext(Creator_sizeContext.class,i);
		}
		public NeworContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_newor; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterNewor(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitNewor(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitNewor(this);
			else return visitor.visitChildren(this);
		}
	}

	public final NeworContext newor() throws RecognitionException {
		NeworContext _localctx = new NeworContext(_ctx, getState());
		enterRule(_localctx, 56, RULE_newor);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(241);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Identifier:
				{
				setState(239);
				match(Identifier);
				}
				break;
			case INT:
			case BOOL:
			case STRING:
				{
				setState(240);
				basic_type();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(251);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,24,_ctx) ) {
			case 1:
				{
				setState(243);
				match(LEFT_PAREN);
				setState(244);
				match(RIGHT_PAREN);
				}
				break;
			case 2:
				{
				setState(248);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,23,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(245);
						creator_size();
						}
						} 
					}
					setState(250);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,23,_ctx);
				}
				}
				break;
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Creator_sizeContext extends ParserRuleContext {
		public TerminalNode LEFT_BRACK() { return getToken(MxstarParser.LEFT_BRACK, 0); }
		public TerminalNode RIGHT_BRACK() { return getToken(MxstarParser.RIGHT_BRACK, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public Creator_sizeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_creator_size; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterCreator_size(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitCreator_size(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitCreator_size(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Creator_sizeContext creator_size() throws RecognitionException {
		Creator_sizeContext _localctx = new Creator_sizeContext(_ctx, getState());
		enterRule(_localctx, 58, RULE_creator_size);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(253);
			match(LEFT_BRACK);
			setState(255);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << ADD) | (1L << MINUS) | (1L << NOT) | (1L << NULL) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA_START) | (1L << SELF_PLUS) | (1L << SELF_MINUS) | (1L << LEFT_PAREN) | (1L << FAN) | (1L << BOOL_CHOICE) | (1L << INT_CHOICE) | (1L << STRING_CHOICE) | (1L << Identifier))) != 0)) {
				{
				setState(254);
				expression(0);
				}
			}

			setState(257);
			match(RIGHT_BRACK);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LambadaContext extends ParserRuleContext {
		public TerminalNode LAMBDA_START() { return getToken(MxstarParser.LAMBDA_START, 0); }
		public TerminalNode ARROW() { return getToken(MxstarParser.ARROW, 0); }
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public Sentence_listContext sentence_list() {
			return getRuleContext(Sentence_listContext.class,0);
		}
		public Parameter_listContext parameter_list() {
			return getRuleContext(Parameter_listContext.class,0);
		}
		public LambadaContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_lambada; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterLambada(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitLambada(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitLambada(this);
			else return visitor.visitChildren(this);
		}
	}

	public final LambadaContext lambada() throws RecognitionException {
		LambadaContext _localctx = new LambadaContext(_ctx, getState());
		enterRule(_localctx, 60, RULE_lambada);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(259);
			match(LAMBDA_START);
			setState(261);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==LEFT_PAREN) {
				{
				setState(260);
				parameter_list();
				}
			}

			setState(263);
			match(ARROW);
			setState(264);
			suite();
			setState(265);
			sentence_list();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Sentence_listContext extends ParserRuleContext {
		public TerminalNode LEFT_PAREN() { return getToken(MxstarParser.LEFT_PAREN, 0); }
		public TerminalNode RIGHT_PAREN() { return getToken(MxstarParser.RIGHT_PAREN, 0); }
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public List<TerminalNode> COMMA() { return getTokens(MxstarParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(MxstarParser.COMMA, i);
		}
		public Sentence_listContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_sentence_list; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterSentence_list(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitSentence_list(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitSentence_list(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Sentence_listContext sentence_list() throws RecognitionException {
		Sentence_listContext _localctx = new Sentence_listContext(_ctx, getState());
		enterRule(_localctx, 62, RULE_sentence_list);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(267);
			match(LEFT_PAREN);
			setState(276);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << ADD) | (1L << MINUS) | (1L << NOT) | (1L << NULL) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA_START) | (1L << SELF_PLUS) | (1L << SELF_MINUS) | (1L << LEFT_PAREN) | (1L << FAN) | (1L << BOOL_CHOICE) | (1L << INT_CHOICE) | (1L << STRING_CHOICE) | (1L << Identifier))) != 0)) {
				{
				setState(268);
				expression(0);
				setState(273);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMMA) {
					{
					{
					setState(269);
					match(COMMA);
					setState(270);
					expression(0);
					}
					}
					setState(275);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(278);
			match(RIGHT_PAREN);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionContext extends ParserRuleContext {
		public ExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression; }
	 
		public ExpressionContext() { }
		public void copyFrom(ExpressionContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class UnaryexprContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode ADD() { return getToken(MxstarParser.ADD, 0); }
		public TerminalNode MINUS() { return getToken(MxstarParser.MINUS, 0); }
		public TerminalNode NOT() { return getToken(MxstarParser.NOT, 0); }
		public TerminalNode FAN() { return getToken(MxstarParser.FAN, 0); }
		public UnaryexprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterUnaryexpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitUnaryexpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitUnaryexpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class HanshudiaoyongContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public Sentence_listContext sentence_list() {
			return getRuleContext(Sentence_listContext.class,0);
		}
		public HanshudiaoyongContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterHanshudiaoyong(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitHanshudiaoyong(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitHanshudiaoyong(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class BasicexprContext extends ExpressionContext {
		public TerminalNode Identifier() { return getToken(MxstarParser.Identifier, 0); }
		public TerminalNode THIS() { return getToken(MxstarParser.THIS, 0); }
		public TerminalNode NULL() { return getToken(MxstarParser.NULL, 0); }
		public TerminalNode INT_CHOICE() { return getToken(MxstarParser.INT_CHOICE, 0); }
		public TerminalNode BOOL_CHOICE() { return getToken(MxstarParser.BOOL_CHOICE, 0); }
		public TerminalNode STRING_CHOICE() { return getToken(MxstarParser.STRING_CHOICE, 0); }
		public BasicexprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterBasicexpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitBasicexpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitBasicexpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class LambadaexprContext extends ExpressionContext {
		public LambadaContext lambada() {
			return getRuleContext(LambadaContext.class,0);
		}
		public LambadaexprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterLambadaexpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitLambadaexpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitLambadaexpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class BackPLUSMINUSContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode SELF_PLUS() { return getToken(MxstarParser.SELF_PLUS, 0); }
		public TerminalNode SELF_MINUS() { return getToken(MxstarParser.SELF_MINUS, 0); }
		public BackPLUSMINUSContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterBackPLUSMINUS(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitBackPLUSMINUS(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitBackPLUSMINUS(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class NewexprContext extends ExpressionContext {
		public TerminalNode NEW() { return getToken(MxstarParser.NEW, 0); }
		public NeworContext newor() {
			return getRuleContext(NeworContext.class,0);
		}
		public NewexprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterNewexpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitNewexpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitNewexpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ArrayexprContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode LEFT_BRACK() { return getToken(MxstarParser.LEFT_BRACK, 0); }
		public TerminalNode RIGHT_BRACK() { return getToken(MxstarParser.RIGHT_BRACK, 0); }
		public ArrayexprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterArrayexpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitArrayexpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitArrayexpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class BinaryexprContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode DOT() { return getToken(MxstarParser.DOT, 0); }
		public TerminalNode STAR() { return getToken(MxstarParser.STAR, 0); }
		public TerminalNode DIVIDE() { return getToken(MxstarParser.DIVIDE, 0); }
		public TerminalNode MOD() { return getToken(MxstarParser.MOD, 0); }
		public TerminalNode ADD() { return getToken(MxstarParser.ADD, 0); }
		public TerminalNode MINUS() { return getToken(MxstarParser.MINUS, 0); }
		public TerminalNode LEFT_SHIFT() { return getToken(MxstarParser.LEFT_SHIFT, 0); }
		public TerminalNode RIGHT_SHIFT() { return getToken(MxstarParser.RIGHT_SHIFT, 0); }
		public TerminalNode GREATER() { return getToken(MxstarParser.GREATER, 0); }
		public TerminalNode LESS() { return getToken(MxstarParser.LESS, 0); }
		public TerminalNode GREATER_E() { return getToken(MxstarParser.GREATER_E, 0); }
		public TerminalNode LESS_E() { return getToken(MxstarParser.LESS_E, 0); }
		public TerminalNode EQUAL() { return getToken(MxstarParser.EQUAL, 0); }
		public TerminalNode NOT_EQUAL() { return getToken(MxstarParser.NOT_EQUAL, 0); }
		public TerminalNode AND() { return getToken(MxstarParser.AND, 0); }
		public TerminalNode XOR() { return getToken(MxstarParser.XOR, 0); }
		public TerminalNode OR() { return getToken(MxstarParser.OR, 0); }
		public TerminalNode AND_AND() { return getToken(MxstarParser.AND_AND, 0); }
		public TerminalNode OR_OR() { return getToken(MxstarParser.OR_OR, 0); }
		public TerminalNode ASSIGN() { return getToken(MxstarParser.ASSIGN, 0); }
		public BinaryexprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterBinaryexpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitBinaryexpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitBinaryexpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class PrePLUSMINUSContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode SELF_PLUS() { return getToken(MxstarParser.SELF_PLUS, 0); }
		public TerminalNode SELF_MINUS() { return getToken(MxstarParser.SELF_MINUS, 0); }
		public PrePLUSMINUSContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterPrePLUSMINUS(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitPrePLUSMINUS(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitPrePLUSMINUS(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class BracketxprContext extends ExpressionContext {
		public TerminalNode LEFT_PAREN() { return getToken(MxstarParser.LEFT_PAREN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode RIGHT_PAREN() { return getToken(MxstarParser.RIGHT_PAREN, 0); }
		public BracketxprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterBracketxpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitBracketxpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitBracketxpr(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExpressionContext expression() throws RecognitionException {
		return expression(0);
	}

	private ExpressionContext expression(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExpressionContext _localctx = new ExpressionContext(_ctx, _parentState);
		ExpressionContext _prevctx = _localctx;
		int _startState = 64;
		enterRecursionRule(_localctx, 64, RULE_expression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(300);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case ADD:
			case MINUS:
				{
				_localctx = new UnaryexprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(281);
				_la = _input.LA(1);
				if ( !(_la==ADD || _la==MINUS) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(282);
				expression(23);
				}
				break;
			case SELF_PLUS:
			case SELF_MINUS:
				{
				_localctx = new BackPLUSMINUSContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(283);
				_la = _input.LA(1);
				if ( !(_la==SELF_PLUS || _la==SELF_MINUS) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(284);
				expression(22);
				}
				break;
			case NOT:
			case FAN:
				{
				_localctx = new UnaryexprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(285);
				_la = _input.LA(1);
				if ( !(_la==NOT || _la==FAN) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(286);
				expression(21);
				}
				break;
			case NEW:
				{
				_localctx = new NewexprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(287);
				match(NEW);
				setState(288);
				newor();
				}
				break;
			case Identifier:
				{
				_localctx = new BasicexprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(289);
				match(Identifier);
				}
				break;
			case THIS:
				{
				_localctx = new BasicexprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(290);
				match(THIS);
				}
				break;
			case NULL:
				{
				_localctx = new BasicexprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(291);
				match(NULL);
				}
				break;
			case INT_CHOICE:
				{
				_localctx = new BasicexprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(292);
				match(INT_CHOICE);
				}
				break;
			case BOOL_CHOICE:
				{
				_localctx = new BasicexprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(293);
				match(BOOL_CHOICE);
				}
				break;
			case STRING_CHOICE:
				{
				_localctx = new BasicexprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(294);
				match(STRING_CHOICE);
				}
				break;
			case LAMBDA_START:
				{
				_localctx = new LambadaexprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(295);
				lambada();
				}
				break;
			case LEFT_PAREN:
				{
				_localctx = new BracketxprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(296);
				match(LEFT_PAREN);
				setState(297);
				expression(0);
				setState(298);
				match(RIGHT_PAREN);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(349);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,31,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(347);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,30,_ctx) ) {
					case 1:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(302);
						if (!(precpred(_ctx, 27))) throw new FailedPredicateException(this, "precpred(_ctx, 27)");
						setState(303);
						match(DOT);
						setState(304);
						expression(28);
						}
						break;
					case 2:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(305);
						if (!(precpred(_ctx, 19))) throw new FailedPredicateException(this, "precpred(_ctx, 19)");
						setState(306);
						match(STAR);
						setState(307);
						expression(20);
						}
						break;
					case 3:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(308);
						if (!(precpred(_ctx, 18))) throw new FailedPredicateException(this, "precpred(_ctx, 18)");
						setState(309);
						match(DIVIDE);
						setState(310);
						expression(19);
						}
						break;
					case 4:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(311);
						if (!(precpred(_ctx, 17))) throw new FailedPredicateException(this, "precpred(_ctx, 17)");
						setState(312);
						match(MOD);
						setState(313);
						expression(18);
						}
						break;
					case 5:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(314);
						if (!(precpred(_ctx, 16))) throw new FailedPredicateException(this, "precpred(_ctx, 16)");
						setState(315);
						match(ADD);
						setState(316);
						expression(17);
						}
						break;
					case 6:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(317);
						if (!(precpred(_ctx, 15))) throw new FailedPredicateException(this, "precpred(_ctx, 15)");
						setState(318);
						match(MINUS);
						setState(319);
						expression(16);
						}
						break;
					case 7:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(320);
						if (!(precpred(_ctx, 14))) throw new FailedPredicateException(this, "precpred(_ctx, 14)");
						setState(321);
						_la = _input.LA(1);
						if ( !(_la==LEFT_SHIFT || _la==RIGHT_SHIFT) ) {
						_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(322);
						expression(15);
						}
						break;
					case 8:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(323);
						if (!(precpred(_ctx, 13))) throw new FailedPredicateException(this, "precpred(_ctx, 13)");
						setState(324);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << LESS) | (1L << GREATER) | (1L << LESS_E) | (1L << GREATER_E))) != 0)) ) {
						_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(325);
						expression(14);
						}
						break;
					case 9:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(326);
						if (!(precpred(_ctx, 12))) throw new FailedPredicateException(this, "precpred(_ctx, 12)");
						setState(327);
						_la = _input.LA(1);
						if ( !(_la==EQUAL || _la==NOT_EQUAL) ) {
						_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(328);
						expression(13);
						}
						break;
					case 10:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(329);
						if (!(precpred(_ctx, 11))) throw new FailedPredicateException(this, "precpred(_ctx, 11)");
						setState(330);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << OR) | (1L << XOR) | (1L << AND))) != 0)) ) {
						_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(331);
						expression(12);
						}
						break;
					case 11:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(332);
						if (!(precpred(_ctx, 10))) throw new FailedPredicateException(this, "precpred(_ctx, 10)");
						setState(333);
						_la = _input.LA(1);
						if ( !(_la==AND_AND || _la==OR_OR) ) {
						_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(334);
						expression(11);
						}
						break;
					case 12:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(335);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(336);
						match(ASSIGN);
						setState(337);
						expression(9);
						}
						break;
					case 13:
						{
						_localctx = new HanshudiaoyongContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(338);
						if (!(precpred(_ctx, 26))) throw new FailedPredicateException(this, "precpred(_ctx, 26)");
						setState(339);
						sentence_list();
						}
						break;
					case 14:
						{
						_localctx = new PrePLUSMINUSContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(340);
						if (!(precpred(_ctx, 25))) throw new FailedPredicateException(this, "precpred(_ctx, 25)");
						setState(341);
						_la = _input.LA(1);
						if ( !(_la==SELF_PLUS || _la==SELF_MINUS) ) {
						_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						}
						break;
					case 15:
						{
						_localctx = new ArrayexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(342);
						if (!(precpred(_ctx, 24))) throw new FailedPredicateException(this, "precpred(_ctx, 24)");
						setState(343);
						match(LEFT_BRACK);
						setState(344);
						expression(0);
						setState(345);
						match(RIGHT_BRACK);
						}
						break;
					}
					} 
				}
				setState(351);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,31,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 32:
			return expression_sempred((ExpressionContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expression_sempred(ExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 27);
		case 1:
			return precpred(_ctx, 19);
		case 2:
			return precpred(_ctx, 18);
		case 3:
			return precpred(_ctx, 17);
		case 4:
			return precpred(_ctx, 16);
		case 5:
			return precpred(_ctx, 15);
		case 6:
			return precpred(_ctx, 14);
		case 7:
			return precpred(_ctx, 13);
		case 8:
			return precpred(_ctx, 12);
		case 9:
			return precpred(_ctx, 11);
		case 10:
			return precpred(_ctx, 10);
		case 11:
			return precpred(_ctx, 9);
		case 12:
			return precpred(_ctx, 26);
		case 13:
			return precpred(_ctx, 25);
		case 14:
			return precpred(_ctx, 24);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3:\u0163\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \4!"+
		"\t!\4\"\t\"\3\2\7\2F\n\2\f\2\16\2I\13\2\3\2\3\2\3\3\3\3\3\3\5\3P\n\3\3"+
		"\4\3\4\3\4\3\5\3\5\3\5\3\5\5\5Y\n\5\3\5\3\5\7\5]\n\5\f\5\16\5`\13\5\3"+
		"\5\3\5\3\5\3\6\3\6\3\6\3\6\3\6\3\7\3\7\7\7l\n\7\f\7\16\7o\13\7\3\7\3\7"+
		"\3\b\3\b\3\b\5\bv\n\b\3\t\3\t\3\t\3\t\7\t|\n\t\f\t\16\t\177\13\t\5\t\u0081"+
		"\n\t\3\t\3\t\3\n\3\n\3\n\3\13\3\13\3\13\3\13\3\13\3\f\3\f\3\f\3\r\3\r"+
		"\3\r\3\r\7\r\u0094\n\r\f\r\16\r\u0097\13\r\3\16\3\16\3\16\5\16\u009c\n"+
		"\16\3\17\3\17\5\17\u00a0\n\17\3\17\3\17\7\17\u00a4\n\17\f\17\16\17\u00a7"+
		"\13\17\3\20\3\20\3\21\3\21\5\21\u00ad\n\21\3\22\3\22\3\22\3\22\3\22\3"+
		"\22\3\22\3\22\5\22\u00b7\n\22\3\23\3\23\3\23\3\24\3\24\3\24\3\24\3\24"+
		"\3\24\5\24\u00c2\n\24\3\25\3\25\3\25\3\26\3\26\3\26\5\26\u00ca\n\26\3"+
		"\27\3\27\3\27\3\27\3\27\3\27\3\30\3\30\3\30\5\30\u00d5\n\30\3\30\3\30"+
		"\5\30\u00d9\n\30\3\30\3\30\5\30\u00dd\n\30\3\30\3\30\3\30\3\31\3\31\5"+
		"\31\u00e4\n\31\3\32\3\32\3\33\3\33\5\33\u00ea\n\33\3\33\3\33\3\34\3\34"+
		"\3\35\3\35\3\36\3\36\5\36\u00f4\n\36\3\36\3\36\3\36\7\36\u00f9\n\36\f"+
		"\36\16\36\u00fc\13\36\5\36\u00fe\n\36\3\37\3\37\5\37\u0102\n\37\3\37\3"+
		"\37\3 \3 \5 \u0108\n \3 \3 \3 \3 \3!\3!\3!\3!\7!\u0112\n!\f!\16!\u0115"+
		"\13!\5!\u0117\n!\3!\3!\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\""+
		"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\5\"\u012f\n\"\3\"\3\"\3\"\3\"\3\"\3\""+
		"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3"+
		"\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\""+
		"\3\"\3\"\3\"\3\"\7\"\u015e\n\"\f\"\16\"\u0161\13\"\3\"\2\3B#\2\4\6\b\n"+
		"\f\16\20\22\24\26\30\32\34\36 \"$&(*,.\60\62\64\668:<>@B\2\13\3\2\21\23"+
		"\3\2\3\4\3\2&\'\4\2\20\20\63\63\3\2./\4\2\b\t\13\f\4\2\n\n\r\r\3\2\60"+
		"\62\3\2\16\17\2\u0181\2G\3\2\2\2\4O\3\2\2\2\6Q\3\2\2\2\bT\3\2\2\2\nd\3"+
		"\2\2\2\fi\3\2\2\2\16u\3\2\2\2\20w\3\2\2\2\22\u0084\3\2\2\2\24\u0087\3"+
		"\2\2\2\26\u008c\3\2\2\2\30\u008f\3\2\2\2\32\u0098\3\2\2\2\34\u009f\3\2"+
		"\2\2\36\u00a8\3\2\2\2 \u00ac\3\2\2\2\"\u00b6\3\2\2\2$\u00b8\3\2\2\2&\u00bb"+
		"\3\2\2\2(\u00c3\3\2\2\2*\u00c9\3\2\2\2,\u00cb\3\2\2\2.\u00d1\3\2\2\2\60"+
		"\u00e3\3\2\2\2\62\u00e5\3\2\2\2\64\u00e7\3\2\2\2\66\u00ed\3\2\2\28\u00ef"+
		"\3\2\2\2:\u00f3\3\2\2\2<\u00ff\3\2\2\2>\u0105\3\2\2\2@\u010d\3\2\2\2B"+
		"\u012e\3\2\2\2DF\5\4\3\2ED\3\2\2\2FI\3\2\2\2GE\3\2\2\2GH\3\2\2\2HJ\3\2"+
		"\2\2IG\3\2\2\2JK\7\2\2\3K\3\3\2\2\2LP\5\b\5\2MP\5\24\13\2NP\5\6\4\2OL"+
		"\3\2\2\2OM\3\2\2\2ON\3\2\2\2P\5\3\2\2\2QR\5\30\r\2RS\7#\2\2S\7\3\2\2\2"+
		"TU\7\36\2\2UV\7\67\2\2VX\7,\2\2WY\5\n\6\2XW\3\2\2\2XY\3\2\2\2Y^\3\2\2"+
		"\2Z]\5\26\f\2[]\5\24\13\2\\Z\3\2\2\2\\[\3\2\2\2]`\3\2\2\2^\\\3\2\2\2^"+
		"_\3\2\2\2_a\3\2\2\2`^\3\2\2\2ab\7-\2\2bc\7#\2\2c\t\3\2\2\2de\7\67\2\2"+
		"ef\7(\2\2fg\7)\2\2gh\5\f\7\2h\13\3\2\2\2im\7,\2\2jl\5\16\b\2kj\3\2\2\2"+
		"lo\3\2\2\2mk\3\2\2\2mn\3\2\2\2np\3\2\2\2om\3\2\2\2pq\7-\2\2q\r\3\2\2\2"+
		"rv\5\"\22\2sv\5\f\7\2tv\7#\2\2ur\3\2\2\2us\3\2\2\2ut\3\2\2\2v\17\3\2\2"+
		"\2w\u0080\7(\2\2x}\5\22\n\2yz\7\"\2\2z|\5\22\n\2{y\3\2\2\2|\177\3\2\2"+
		"\2}{\3\2\2\2}~\3\2\2\2~\u0081\3\2\2\2\177}\3\2\2\2\u0080x\3\2\2\2\u0080"+
		"\u0081\3\2\2\2\u0081\u0082\3\2\2\2\u0082\u0083\7)\2\2\u0083\21\3\2\2\2"+
		"\u0084\u0085\5\34\17\2\u0085\u0086\7\67\2\2\u0086\23\3\2\2\2\u0087\u0088"+
		"\5 \21\2\u0088\u0089\7\67\2\2\u0089\u008a\5\20\t\2\u008a\u008b\5\f\7\2"+
		"\u008b\25\3\2\2\2\u008c\u008d\5\30\r\2\u008d\u008e\7#\2\2\u008e\27\3\2"+
		"\2\2\u008f\u0090\5\34\17\2\u0090\u0095\5\32\16\2\u0091\u0092\7\"\2\2\u0092"+
		"\u0094\5\32\16\2\u0093\u0091\3\2\2\2\u0094\u0097\3\2\2\2\u0095\u0093\3"+
		"\2\2\2\u0095\u0096\3\2\2\2\u0096\31\3\2\2\2\u0097\u0095\3\2\2\2\u0098"+
		"\u009b\7\67\2\2\u0099\u009a\7%\2\2\u009a\u009c\5B\"\2\u009b\u0099\3\2"+
		"\2\2\u009b\u009c\3\2\2\2\u009c\33\3\2\2\2\u009d\u00a0\7\67\2\2\u009e\u00a0"+
		"\5\36\20\2\u009f\u009d\3\2\2\2\u009f\u009e\3\2\2\2\u00a0\u00a5\3\2\2\2"+
		"\u00a1\u00a2\7*\2\2\u00a2\u00a4\7+\2\2\u00a3\u00a1\3\2\2\2\u00a4\u00a7"+
		"\3\2\2\2\u00a5\u00a3\3\2\2\2\u00a5\u00a6\3\2\2\2\u00a6\35\3\2\2\2\u00a7"+
		"\u00a5\3\2\2\2\u00a8\u00a9\t\2\2\2\u00a9\37\3\2\2\2\u00aa\u00ad\5\34\17"+
		"\2\u00ab\u00ad\7\25\2\2\u00ac\u00aa\3\2\2\2\u00ac\u00ab\3\2\2\2\u00ad"+
		"!\3\2\2\2\u00ae\u00b7\5\26\f\2\u00af\u00b7\5$\23\2\u00b0\u00b7\5&\24\2"+
		"\u00b1\u00b7\5,\27\2\u00b2\u00b7\5.\30\2\u00b3\u00b7\5\64\33\2\u00b4\u00b7"+
		"\5\66\34\2\u00b5\u00b7\58\35\2\u00b6\u00ae\3\2\2\2\u00b6\u00af\3\2\2\2"+
		"\u00b6\u00b0\3\2\2\2\u00b6\u00b1\3\2\2\2\u00b6\u00b2\3\2\2\2\u00b6\u00b3"+
		"\3\2\2\2\u00b6\u00b4\3\2\2\2\u00b6\u00b5\3\2\2\2\u00b7#\3\2\2\2\u00b8"+
		"\u00b9\5B\"\2\u00b9\u00ba\7#\2\2\u00ba%\3\2\2\2\u00bb\u00bc\7\26\2\2\u00bc"+
		"\u00bd\7(\2\2\u00bd\u00be\5B\"\2\u00be\u00bf\7)\2\2\u00bf\u00c1\5*\26"+
		"\2\u00c0\u00c2\5(\25\2\u00c1\u00c0\3\2\2\2\u00c1\u00c2\3\2\2\2\u00c2\'"+
		"\3\2\2\2\u00c3\u00c4\7\27\2\2\u00c4\u00c5\5*\26\2\u00c5)\3\2\2\2\u00c6"+
		"\u00ca\5\f\7\2\u00c7\u00ca\5\"\22\2\u00c8\u00ca\7#\2\2\u00c9\u00c6\3\2"+
		"\2\2\u00c9\u00c7\3\2\2\2\u00c9\u00c8\3\2\2\2\u00ca+\3\2\2\2\u00cb\u00cc"+
		"\7\31\2\2\u00cc\u00cd\7(\2\2\u00cd\u00ce\5B\"\2\u00ce\u00cf\7)\2\2\u00cf"+
		"\u00d0\5*\26\2\u00d0-\3\2\2\2\u00d1\u00d2\7\30\2\2\u00d2\u00d4\7(\2\2"+
		"\u00d3\u00d5\5\60\31\2\u00d4\u00d3\3\2\2\2\u00d4\u00d5\3\2\2\2\u00d5\u00d6"+
		"\3\2\2\2\u00d6\u00d8\7#\2\2\u00d7\u00d9\5\62\32\2\u00d8\u00d7\3\2\2\2"+
		"\u00d8\u00d9\3\2\2\2\u00d9\u00da\3\2\2\2\u00da\u00dc\7#\2\2\u00db\u00dd"+
		"\5B\"\2\u00dc\u00db\3\2\2\2\u00dc\u00dd\3\2\2\2\u00dd\u00de\3\2\2\2\u00de"+
		"\u00df\7)\2\2\u00df\u00e0\5*\26\2\u00e0/\3\2\2\2\u00e1\u00e4\5B\"\2\u00e2"+
		"\u00e4\5\30\r\2\u00e3\u00e1\3\2\2\2\u00e3\u00e2\3\2\2\2\u00e4\61\3\2\2"+
		"\2\u00e5\u00e6\5B\"\2\u00e6\63\3\2\2\2\u00e7\u00e9\7\34\2\2\u00e8\u00ea"+
		"\5B\"\2\u00e9\u00e8\3\2\2\2\u00e9\u00ea\3\2\2\2\u00ea\u00eb\3\2\2\2\u00eb"+
		"\u00ec\7#\2\2\u00ec\65\3\2\2\2\u00ed\u00ee\7\33\2\2\u00ee\67\3\2\2\2\u00ef"+
		"\u00f0\7\32\2\2\u00f09\3\2\2\2\u00f1\u00f4\7\67\2\2\u00f2\u00f4\5\36\20"+
		"\2\u00f3\u00f1\3\2\2\2\u00f3\u00f2\3\2\2\2\u00f4\u00fd\3\2\2\2\u00f5\u00f6"+
		"\7(\2\2\u00f6\u00fe\7)\2\2\u00f7\u00f9\5<\37\2\u00f8\u00f7\3\2\2\2\u00f9"+
		"\u00fc\3\2\2\2\u00fa\u00f8\3\2\2\2\u00fa\u00fb\3\2\2\2\u00fb\u00fe\3\2"+
		"\2\2\u00fc\u00fa\3\2\2\2\u00fd\u00f5\3\2\2\2\u00fd\u00fa\3\2\2\2\u00fe"+
		";\3\2\2\2\u00ff\u0101\7*\2\2\u0100\u0102\5B\"\2\u0101\u0100\3\2\2\2\u0101"+
		"\u0102\3\2\2\2\u0102\u0103\3\2\2\2\u0103\u0104\7+\2\2\u0104=\3\2\2\2\u0105"+
		"\u0107\7 \2\2\u0106\u0108\5\20\t\2\u0107\u0106\3\2\2\2\u0107\u0108\3\2"+
		"\2\2\u0108\u0109\3\2\2\2\u0109\u010a\7$\2\2\u010a\u010b\5\f\7\2\u010b"+
		"\u010c\5@!\2\u010c?\3\2\2\2\u010d\u0116\7(\2\2\u010e\u0113\5B\"\2\u010f"+
		"\u0110\7\"\2\2\u0110\u0112\5B\"\2\u0111\u010f\3\2\2\2\u0112\u0115\3\2"+
		"\2\2\u0113\u0111\3\2\2\2\u0113\u0114\3\2\2\2\u0114\u0117\3\2\2\2\u0115"+
		"\u0113\3\2\2\2\u0116\u010e\3\2\2\2\u0116\u0117\3\2\2\2\u0117\u0118\3\2"+
		"\2\2\u0118\u0119\7)\2\2\u0119A\3\2\2\2\u011a\u011b\b\"\1\2\u011b\u011c"+
		"\t\3\2\2\u011c\u012f\5B\"\31\u011d\u011e\t\4\2\2\u011e\u012f\5B\"\30\u011f"+
		"\u0120\t\5\2\2\u0120\u012f\5B\"\27\u0121\u0122\7\35\2\2\u0122\u012f\5"+
		":\36\2\u0123\u012f\7\67\2\2\u0124\u012f\7\37\2\2\u0125\u012f\7\24\2\2"+
		"\u0126\u012f\7\65\2\2\u0127\u012f\7\64\2\2\u0128\u012f\7\66\2\2\u0129"+
		"\u012f\5> \2\u012a\u012b\7(\2\2\u012b\u012c\5B\"\2\u012c\u012d\7)\2\2"+
		"\u012d\u012f\3\2\2\2\u012e\u011a\3\2\2\2\u012e\u011d\3\2\2\2\u012e\u011f"+
		"\3\2\2\2\u012e\u0121\3\2\2\2\u012e\u0123\3\2\2\2\u012e\u0124\3\2\2\2\u012e"+
		"\u0125\3\2\2\2\u012e\u0126\3\2\2\2\u012e\u0127\3\2\2\2\u012e\u0128\3\2"+
		"\2\2\u012e\u0129\3\2\2\2\u012e\u012a\3\2\2\2\u012f\u015f\3\2\2\2\u0130"+
		"\u0131\f\35\2\2\u0131\u0132\7!\2\2\u0132\u015e\5B\"\36\u0133\u0134\f\25"+
		"\2\2\u0134\u0135\7\5\2\2\u0135\u015e\5B\"\26\u0136\u0137\f\24\2\2\u0137"+
		"\u0138\7\6\2\2\u0138\u015e\5B\"\25\u0139\u013a\f\23\2\2\u013a\u013b\7"+
		"\7\2\2\u013b\u015e\5B\"\24\u013c\u013d\f\22\2\2\u013d\u013e\7\3\2\2\u013e"+
		"\u015e\5B\"\23\u013f\u0140\f\21\2\2\u0140\u0141\7\4\2\2\u0141\u015e\5"+
		"B\"\22\u0142\u0143\f\20\2\2\u0143\u0144\t\6\2\2\u0144\u015e\5B\"\21\u0145"+
		"\u0146\f\17\2\2\u0146\u0147\t\7\2\2\u0147\u015e\5B\"\20\u0148\u0149\f"+
		"\16\2\2\u0149\u014a\t\b\2\2\u014a\u015e\5B\"\17\u014b\u014c\f\r\2\2\u014c"+
		"\u014d\t\t\2\2\u014d\u015e\5B\"\16\u014e\u014f\f\f\2\2\u014f\u0150\t\n"+
		"\2\2\u0150\u015e\5B\"\r\u0151\u0152\f\13\2\2\u0152\u0153\7%\2\2\u0153"+
		"\u015e\5B\"\13\u0154\u0155\f\34\2\2\u0155\u015e\5@!\2\u0156\u0157\f\33"+
		"\2\2\u0157\u015e\t\4\2\2\u0158\u0159\f\32\2\2\u0159\u015a\7*\2\2\u015a"+
		"\u015b\5B\"\2\u015b\u015c\7+\2\2\u015c\u015e\3\2\2\2\u015d\u0130\3\2\2"+
		"\2\u015d\u0133\3\2\2\2\u015d\u0136\3\2\2\2\u015d\u0139\3\2\2\2\u015d\u013c"+
		"\3\2\2\2\u015d\u013f\3\2\2\2\u015d\u0142\3\2\2\2\u015d\u0145\3\2\2\2\u015d"+
		"\u0148\3\2\2\2\u015d\u014b\3\2\2\2\u015d\u014e\3\2\2\2\u015d\u0151\3\2"+
		"\2\2\u015d\u0154\3\2\2\2\u015d\u0156\3\2\2\2\u015d\u0158\3\2\2\2\u015e"+
		"\u0161\3\2\2\2\u015f\u015d\3\2\2\2\u015f\u0160\3\2\2\2\u0160C\3\2\2\2"+
		"\u0161\u015f\3\2\2\2\"GOX\\^mu}\u0080\u0095\u009b\u009f\u00a5\u00ac\u00b6"+
		"\u00c1\u00c9\u00d4\u00d8\u00dc\u00e3\u00e9\u00f3\u00fa\u00fd\u0101\u0107"+
		"\u0113\u0116\u012e\u015d\u015f";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}