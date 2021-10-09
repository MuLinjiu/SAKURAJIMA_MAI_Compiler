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
		RULE_program = 0, RULE_define = 1, RULE_class_define = 2, RULE_constructor_define = 3, 
		RULE_suite = 4, RULE_parameter_list = 5, RULE_parameter = 6, RULE_function_define = 7, 
		RULE_var_define_youfen = 8, RULE_var_define_wufen = 9, RULE_var_define_sentence = 10, 
		RULE_type = 11, RULE_basic_type = 12, RULE_func_type = 13, RULE_statement = 14, 
		RULE_expression_stmt = 15, RULE_if_stmt = 16, RULE_while_stmt = 17, RULE_for_stmt = 18, 
		RULE_control_stmt = 19, RULE_newor = 20, RULE_lambada = 21, RULE_sentence_list = 22, 
		RULE_expression = 23;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "define", "class_define", "constructor_define", "suite", "parameter_list", 
			"parameter", "function_define", "var_define_youfen", "var_define_wufen", 
			"var_define_sentence", "type", "basic_type", "func_type", "statement", 
			"expression_stmt", "if_stmt", "while_stmt", "for_stmt", "control_stmt", 
			"newor", "lambada", "sentence_list", "expression"
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
			setState(51);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << INT) | (1L << BOOL) | (1L << STRING) | (1L << VOID) | (1L << CLASS) | (1L << Identifier))) != 0)) {
				{
				{
				setState(48);
				define();
				}
				}
				setState(53);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(54);
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
		public Var_define_youfenContext var_define_youfen() {
			return getRuleContext(Var_define_youfenContext.class,0);
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
			setState(59);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,1,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(56);
				class_define();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(57);
				function_define();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(58);
				var_define_youfen();
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
		enterRule(_localctx, 4, RULE_class_define);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(61);
			match(CLASS);
			setState(62);
			match(Identifier);
			setState(63);
			match(LEFT_BRACE);
			setState(65);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,2,_ctx) ) {
			case 1:
				{
				setState(64);
				constructor_define();
				}
				break;
			}
			setState(71);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << INT) | (1L << BOOL) | (1L << STRING) | (1L << VOID) | (1L << Identifier))) != 0)) {
				{
				setState(69);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,3,_ctx) ) {
				case 1:
					{
					setState(67);
					var_define_youfen();
					}
					break;
				case 2:
					{
					setState(68);
					function_define();
					}
					break;
				}
				}
				setState(73);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(74);
			match(RIGHT_BRACE);
			setState(75);
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
		public ParameterContext parameter() {
			return getRuleContext(ParameterContext.class,0);
		}
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
		enterRule(_localctx, 6, RULE_constructor_define);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(77);
			match(Identifier);
			setState(78);
			match(LEFT_PAREN);
			setState(79);
			parameter();
			setState(80);
			match(RIGHT_PAREN);
			setState(81);
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
		public List<SuiteContext> suite() {
			return getRuleContexts(SuiteContext.class);
		}
		public SuiteContext suite(int i) {
			return getRuleContext(SuiteContext.class,i);
		}
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
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
		enterRule(_localctx, 8, RULE_suite);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(83);
			match(LEFT_BRACE);
			setState(88);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << ADD) | (1L << MINUS) | (1L << NOT) | (1L << INT) | (1L << BOOL) | (1L << STRING) | (1L << NULL) | (1L << IF) | (1L << FOR) | (1L << WHILE) | (1L << BREAK) | (1L << CONITNUE) | (1L << RETURN) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA_START) | (1L << SEMI) | (1L << SELF_PLUS) | (1L << SELF_MINUS) | (1L << LEFT_PAREN) | (1L << LEFT_BRACE) | (1L << FAN) | (1L << BOOL_CHOICE) | (1L << INT_CHOICE) | (1L << STRING_CHOICE) | (1L << Identifier))) != 0)) {
				{
				setState(86);
				_errHandler.sync(this);
				switch (_input.LA(1)) {
				case LEFT_BRACE:
					{
					setState(84);
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
				case SEMI:
				case SELF_PLUS:
				case SELF_MINUS:
				case LEFT_PAREN:
				case FAN:
				case BOOL_CHOICE:
				case INT_CHOICE:
				case STRING_CHOICE:
				case Identifier:
					{
					setState(85);
					statement();
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				}
				setState(90);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(91);
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
		enterRule(_localctx, 10, RULE_parameter_list);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(93);
			match(LEFT_PAREN);
			setState(102);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << INT) | (1L << BOOL) | (1L << STRING) | (1L << Identifier))) != 0)) {
				{
				setState(94);
				parameter();
				setState(99);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMMA) {
					{
					{
					setState(95);
					match(COMMA);
					setState(96);
					parameter();
					}
					}
					setState(101);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(104);
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
		enterRule(_localctx, 12, RULE_parameter);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(106);
			type(0);
			setState(107);
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
		enterRule(_localctx, 14, RULE_function_define);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(109);
			func_type();
			setState(110);
			match(Identifier);
			setState(111);
			parameter_list();
			setState(112);
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
		enterRule(_localctx, 16, RULE_var_define_youfen);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(114);
			var_define_wufen();
			setState(115);
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
		enterRule(_localctx, 18, RULE_var_define_wufen);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(117);
			type(0);
			setState(118);
			var_define_sentence();
			setState(123);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(119);
				match(COMMA);
				setState(120);
				var_define_sentence();
				}
				}
				setState(125);
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
		enterRule(_localctx, 20, RULE_var_define_sentence);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(126);
			match(Identifier);
			setState(129);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ASSIGN) {
				{
				setState(127);
				match(ASSIGN);
				setState(128);
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
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode LEFT_BRACK() { return getToken(MxstarParser.LEFT_BRACK, 0); }
		public TerminalNode RIGHT_BRACK() { return getToken(MxstarParser.RIGHT_BRACK, 0); }
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
		return type(0);
	}

	private TypeContext type(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		TypeContext _localctx = new TypeContext(_ctx, _parentState);
		TypeContext _prevctx = _localctx;
		int _startState = 22;
		enterRecursionRule(_localctx, 22, RULE_type, _p);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(134);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Identifier:
				{
				setState(132);
				match(Identifier);
				}
				break;
			case INT:
			case BOOL:
			case STRING:
				{
				setState(133);
				basic_type();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(141);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,12,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					{
					_localctx = new TypeContext(_parentctx, _parentState);
					pushNewRecursionContext(_localctx, _startState, RULE_type);
					setState(136);
					if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
					setState(137);
					match(LEFT_BRACK);
					setState(138);
					match(RIGHT_BRACK);
					}
					} 
				}
				setState(143);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,12,_ctx);
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
		enterRule(_localctx, 24, RULE_basic_type);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(144);
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
		enterRule(_localctx, 26, RULE_func_type);
		try {
			setState(148);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case INT:
			case BOOL:
			case STRING:
			case Identifier:
				enterOuterAlt(_localctx, 1);
				{
				setState(146);
				type(0);
				}
				break;
			case VOID:
				enterOuterAlt(_localctx, 2);
				{
				setState(147);
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
		public Control_stmtContext control_stmt() {
			return getRuleContext(Control_stmtContext.class,0);
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
		enterRule(_localctx, 28, RULE_statement);
		try {
			setState(156);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,14,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(150);
				var_define_youfen();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(151);
				expression_stmt();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(152);
				if_stmt();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(153);
				while_stmt();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(154);
				for_stmt();
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(155);
				control_stmt();
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
		public TerminalNode SEMI() { return getToken(MxstarParser.SEMI, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
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
		enterRule(_localctx, 30, RULE_expression_stmt);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(159);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << ADD) | (1L << MINUS) | (1L << NOT) | (1L << NULL) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA_START) | (1L << SELF_PLUS) | (1L << SELF_MINUS) | (1L << LEFT_PAREN) | (1L << FAN) | (1L << BOOL_CHOICE) | (1L << INT_CHOICE) | (1L << STRING_CHOICE) | (1L << Identifier))) != 0)) {
				{
				setState(158);
				expression(0);
				}
			}

			setState(161);
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
		public List<SuiteContext> suite() {
			return getRuleContexts(SuiteContext.class);
		}
		public SuiteContext suite(int i) {
			return getRuleContext(SuiteContext.class,i);
		}
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public List<TerminalNode> SEMI() { return getTokens(MxstarParser.SEMI); }
		public TerminalNode SEMI(int i) {
			return getToken(MxstarParser.SEMI, i);
		}
		public TerminalNode ELSE() { return getToken(MxstarParser.ELSE, 0); }
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
		enterRule(_localctx, 32, RULE_if_stmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(163);
			match(IF);
			setState(164);
			match(LEFT_PAREN);
			setState(165);
			expression(0);
			setState(166);
			match(RIGHT_PAREN);
			setState(170);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,16,_ctx) ) {
			case 1:
				{
				setState(167);
				suite();
				}
				break;
			case 2:
				{
				setState(168);
				statement();
				}
				break;
			case 3:
				{
				setState(169);
				match(SEMI);
				}
				break;
			}
			setState(178);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,18,_ctx) ) {
			case 1:
				{
				setState(172);
				match(ELSE);
				setState(176);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,17,_ctx) ) {
				case 1:
					{
					setState(173);
					suite();
					}
					break;
				case 2:
					{
					setState(174);
					statement();
					}
					break;
				case 3:
					{
					setState(175);
					match(SEMI);
					}
					break;
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

	public static class While_stmtContext extends ParserRuleContext {
		public TerminalNode WHILE() { return getToken(MxstarParser.WHILE, 0); }
		public TerminalNode LEFT_PAREN() { return getToken(MxstarParser.LEFT_PAREN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode RIGHT_PAREN() { return getToken(MxstarParser.RIGHT_PAREN, 0); }
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public TerminalNode SEMI() { return getToken(MxstarParser.SEMI, 0); }
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
		enterRule(_localctx, 34, RULE_while_stmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(180);
			match(WHILE);
			setState(181);
			match(LEFT_PAREN);
			setState(182);
			expression(0);
			setState(183);
			match(RIGHT_PAREN);
			setState(187);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,19,_ctx) ) {
			case 1:
				{
				setState(184);
				suite();
				}
				break;
			case 2:
				{
				setState(185);
				statement();
				}
				break;
			case 3:
				{
				setState(186);
				match(SEMI);
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

	public static class For_stmtContext extends ParserRuleContext {
		public TerminalNode FOR() { return getToken(MxstarParser.FOR, 0); }
		public TerminalNode LEFT_PAREN() { return getToken(MxstarParser.LEFT_PAREN, 0); }
		public List<TerminalNode> SEMI() { return getTokens(MxstarParser.SEMI); }
		public TerminalNode SEMI(int i) {
			return getToken(MxstarParser.SEMI, i);
		}
		public TerminalNode RIGHT_PAREN() { return getToken(MxstarParser.RIGHT_PAREN, 0); }
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public Var_define_sentenceContext var_define_sentence() {
			return getRuleContext(Var_define_sentenceContext.class,0);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
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
		enterRule(_localctx, 36, RULE_for_stmt);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(189);
			match(FOR);
			setState(190);
			match(LEFT_PAREN);
			setState(192);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==Identifier) {
				{
				setState(191);
				var_define_sentence();
				}
			}

			setState(194);
			match(SEMI);
			setState(196);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << ADD) | (1L << MINUS) | (1L << NOT) | (1L << NULL) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA_START) | (1L << SELF_PLUS) | (1L << SELF_MINUS) | (1L << LEFT_PAREN) | (1L << FAN) | (1L << BOOL_CHOICE) | (1L << INT_CHOICE) | (1L << STRING_CHOICE) | (1L << Identifier))) != 0)) {
				{
				setState(195);
				expression(0);
				}
			}

			setState(198);
			match(SEMI);
			setState(200);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << ADD) | (1L << MINUS) | (1L << NOT) | (1L << NULL) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA_START) | (1L << SELF_PLUS) | (1L << SELF_MINUS) | (1L << LEFT_PAREN) | (1L << FAN) | (1L << BOOL_CHOICE) | (1L << INT_CHOICE) | (1L << STRING_CHOICE) | (1L << Identifier))) != 0)) {
				{
				setState(199);
				expression(0);
				}
			}

			setState(202);
			match(RIGHT_PAREN);
			setState(206);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,23,_ctx) ) {
			case 1:
				{
				setState(203);
				suite();
				}
				break;
			case 2:
				{
				setState(204);
				statement();
				}
				break;
			case 3:
				{
				setState(205);
				match(SEMI);
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

	public static class Control_stmtContext extends ParserRuleContext {
		public TerminalNode SEMI() { return getToken(MxstarParser.SEMI, 0); }
		public TerminalNode RETURN() { return getToken(MxstarParser.RETURN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode CONITNUE() { return getToken(MxstarParser.CONITNUE, 0); }
		public TerminalNode BREAK() { return getToken(MxstarParser.BREAK, 0); }
		public Control_stmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_control_stmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterControl_stmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitControl_stmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitControl_stmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Control_stmtContext control_stmt() throws RecognitionException {
		Control_stmtContext _localctx = new Control_stmtContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_control_stmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(212);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case RETURN:
				{
				setState(208);
				match(RETURN);
				setState(209);
				expression(0);
				}
				break;
			case CONITNUE:
				{
				setState(210);
				match(CONITNUE);
				}
				break;
			case BREAK:
				{
				setState(211);
				match(BREAK);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(214);
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

	public static class NeworContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(MxstarParser.Identifier, 0); }
		public Basic_typeContext basic_type() {
			return getRuleContext(Basic_typeContext.class,0);
		}
		public List<TerminalNode> LEFT_BRACK() { return getTokens(MxstarParser.LEFT_BRACK); }
		public TerminalNode LEFT_BRACK(int i) {
			return getToken(MxstarParser.LEFT_BRACK, i);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public List<TerminalNode> RIGHT_BRACK() { return getTokens(MxstarParser.RIGHT_BRACK); }
		public TerminalNode RIGHT_BRACK(int i) {
			return getToken(MxstarParser.RIGHT_BRACK, i);
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
		enterRule(_localctx, 40, RULE_newor);
		try {
			int _alt;
			setState(233);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Identifier:
				enterOuterAlt(_localctx, 1);
				{
				setState(216);
				match(Identifier);
				}
				break;
			case INT:
			case BOOL:
			case STRING:
				enterOuterAlt(_localctx, 2);
				{
				setState(217);
				basic_type();
				}
				break;
			case LEFT_BRACK:
				enterOuterAlt(_localctx, 3);
				{
				setState(222); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						{
						setState(218);
						match(LEFT_BRACK);
						setState(219);
						expression(0);
						setState(220);
						match(RIGHT_BRACK);
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(224); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,25,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				setState(230);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,26,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(226);
						match(LEFT_BRACK);
						setState(227);
						match(RIGHT_BRACK);
						}
						} 
					}
					setState(232);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,26,_ctx);
				}
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
		enterRule(_localctx, 42, RULE_lambada);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(235);
			match(LAMBDA_START);
			setState(237);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==LEFT_PAREN) {
				{
				setState(236);
				parameter_list();
				}
			}

			setState(239);
			match(ARROW);
			setState(240);
			suite();
			setState(241);
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
		enterRule(_localctx, 44, RULE_sentence_list);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(243);
			match(LEFT_PAREN);
			setState(252);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << ADD) | (1L << MINUS) | (1L << NOT) | (1L << NULL) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA_START) | (1L << SELF_PLUS) | (1L << SELF_MINUS) | (1L << LEFT_PAREN) | (1L << FAN) | (1L << BOOL_CHOICE) | (1L << INT_CHOICE) | (1L << STRING_CHOICE) | (1L << Identifier))) != 0)) {
				{
				setState(244);
				expression(0);
				setState(249);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMMA) {
					{
					{
					setState(245);
					match(COMMA);
					setState(246);
					expression(0);
					}
					}
					setState(251);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(254);
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
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode ADD() { return getToken(MxstarParser.ADD, 0); }
		public TerminalNode MINUS() { return getToken(MxstarParser.MINUS, 0); }
		public TerminalNode SELF_MINUS() { return getToken(MxstarParser.SELF_MINUS, 0); }
		public TerminalNode SELF_PLUS() { return getToken(MxstarParser.SELF_PLUS, 0); }
		public TerminalNode NOT() { return getToken(MxstarParser.NOT, 0); }
		public TerminalNode FAN() { return getToken(MxstarParser.FAN, 0); }
		public TerminalNode NEW() { return getToken(MxstarParser.NEW, 0); }
		public NeworContext newor() {
			return getRuleContext(NeworContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxstarParser.Identifier, 0); }
		public TerminalNode THIS() { return getToken(MxstarParser.THIS, 0); }
		public TerminalNode NULL() { return getToken(MxstarParser.NULL, 0); }
		public TerminalNode INT_CHOICE() { return getToken(MxstarParser.INT_CHOICE, 0); }
		public TerminalNode BOOL_CHOICE() { return getToken(MxstarParser.BOOL_CHOICE, 0); }
		public TerminalNode STRING_CHOICE() { return getToken(MxstarParser.STRING_CHOICE, 0); }
		public LambadaContext lambada() {
			return getRuleContext(LambadaContext.class,0);
		}
		public Sentence_listContext sentence_list() {
			return getRuleContext(Sentence_listContext.class,0);
		}
		public TerminalNode DOT() { return getToken(MxstarParser.DOT, 0); }
		public TerminalNode STAR() { return getToken(MxstarParser.STAR, 0); }
		public TerminalNode DIVIDE() { return getToken(MxstarParser.DIVIDE, 0); }
		public TerminalNode MOD() { return getToken(MxstarParser.MOD, 0); }
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
		public TerminalNode LEFT_BRACK() { return getToken(MxstarParser.LEFT_BRACK, 0); }
		public TerminalNode RIGHT_BRACK() { return getToken(MxstarParser.RIGHT_BRACK, 0); }
		public ExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitExpression(this);
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
		int _startState = 46;
		enterRecursionRule(_localctx, 46, RULE_expression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(273);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case ADD:
			case MINUS:
				{
				setState(257);
				_la = _input.LA(1);
				if ( !(_la==ADD || _la==MINUS) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(258);
				expression(24);
				}
				break;
			case SELF_PLUS:
			case SELF_MINUS:
				{
				setState(259);
				_la = _input.LA(1);
				if ( !(_la==SELF_PLUS || _la==SELF_MINUS) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(260);
				expression(23);
				}
				break;
			case NOT:
			case FAN:
				{
				setState(261);
				_la = _input.LA(1);
				if ( !(_la==NOT || _la==FAN) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(262);
				expression(21);
				}
				break;
			case NEW:
				{
				setState(263);
				match(NEW);
				setState(264);
				newor();
				}
				break;
			case Identifier:
				{
				setState(265);
				match(Identifier);
				}
				break;
			case THIS:
				{
				setState(266);
				match(THIS);
				}
				break;
			case NULL:
				{
				setState(267);
				match(NULL);
				}
				break;
			case INT_CHOICE:
				{
				setState(268);
				match(INT_CHOICE);
				}
				break;
			case BOOL_CHOICE:
				{
				setState(269);
				match(BOOL_CHOICE);
				}
				break;
			case STRING_CHOICE:
				{
				setState(270);
				match(STRING_CHOICE);
				}
				break;
			case LAMBDA_START:
				{
				setState(271);
				lambada();
				}
				break;
			case LEFT_PAREN:
				{
				setState(272);
				sentence_list();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(322);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,33,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(320);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,32,_ctx) ) {
					case 1:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(275);
						if (!(precpred(_ctx, 25))) throw new FailedPredicateException(this, "precpred(_ctx, 25)");
						setState(276);
						match(DOT);
						setState(277);
						expression(26);
						}
						break;
					case 2:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(278);
						if (!(precpred(_ctx, 19))) throw new FailedPredicateException(this, "precpred(_ctx, 19)");
						setState(279);
						match(STAR);
						setState(280);
						expression(20);
						}
						break;
					case 3:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(281);
						if (!(precpred(_ctx, 18))) throw new FailedPredicateException(this, "precpred(_ctx, 18)");
						setState(282);
						match(DIVIDE);
						setState(283);
						expression(19);
						}
						break;
					case 4:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(284);
						if (!(precpred(_ctx, 17))) throw new FailedPredicateException(this, "precpred(_ctx, 17)");
						setState(285);
						match(MOD);
						setState(286);
						expression(18);
						}
						break;
					case 5:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(287);
						if (!(precpred(_ctx, 16))) throw new FailedPredicateException(this, "precpred(_ctx, 16)");
						setState(288);
						match(ADD);
						setState(289);
						expression(17);
						}
						break;
					case 6:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(290);
						if (!(precpred(_ctx, 15))) throw new FailedPredicateException(this, "precpred(_ctx, 15)");
						setState(291);
						match(MINUS);
						setState(292);
						expression(16);
						}
						break;
					case 7:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(293);
						if (!(precpred(_ctx, 14))) throw new FailedPredicateException(this, "precpred(_ctx, 14)");
						setState(294);
						_la = _input.LA(1);
						if ( !(_la==LEFT_SHIFT || _la==RIGHT_SHIFT) ) {
						_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(295);
						expression(15);
						}
						break;
					case 8:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(296);
						if (!(precpred(_ctx, 13))) throw new FailedPredicateException(this, "precpred(_ctx, 13)");
						setState(297);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << LESS) | (1L << GREATER) | (1L << LESS_E) | (1L << GREATER_E))) != 0)) ) {
						_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(298);
						expression(14);
						}
						break;
					case 9:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(299);
						if (!(precpred(_ctx, 12))) throw new FailedPredicateException(this, "precpred(_ctx, 12)");
						setState(300);
						_la = _input.LA(1);
						if ( !(_la==EQUAL || _la==NOT_EQUAL) ) {
						_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(301);
						expression(13);
						}
						break;
					case 10:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(302);
						if (!(precpred(_ctx, 11))) throw new FailedPredicateException(this, "precpred(_ctx, 11)");
						setState(303);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << OR) | (1L << XOR) | (1L << AND))) != 0)) ) {
						_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(304);
						expression(12);
						}
						break;
					case 11:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(305);
						if (!(precpred(_ctx, 10))) throw new FailedPredicateException(this, "precpred(_ctx, 10)");
						setState(306);
						_la = _input.LA(1);
						if ( !(_la==AND_AND || _la==OR_OR) ) {
						_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(307);
						expression(11);
						}
						break;
					case 12:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(308);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(309);
						match(ASSIGN);
						setState(310);
						expression(9);
						}
						break;
					case 13:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(311);
						if (!(precpred(_ctx, 27))) throw new FailedPredicateException(this, "precpred(_ctx, 27)");
						setState(312);
						match(LEFT_BRACK);
						setState(313);
						expression(0);
						setState(314);
						match(RIGHT_BRACK);
						}
						break;
					case 14:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(316);
						if (!(precpred(_ctx, 26))) throw new FailedPredicateException(this, "precpred(_ctx, 26)");
						setState(317);
						sentence_list();
						}
						break;
					case 15:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(318);
						if (!(precpred(_ctx, 22))) throw new FailedPredicateException(this, "precpred(_ctx, 22)");
						setState(319);
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
					}
					} 
				}
				setState(324);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,33,_ctx);
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
		case 11:
			return type_sempred((TypeContext)_localctx, predIndex);
		case 23:
			return expression_sempred((ExpressionContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean type_sempred(TypeContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 1);
		}
		return true;
	}
	private boolean expression_sempred(ExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 1:
			return precpred(_ctx, 25);
		case 2:
			return precpred(_ctx, 19);
		case 3:
			return precpred(_ctx, 18);
		case 4:
			return precpred(_ctx, 17);
		case 5:
			return precpred(_ctx, 16);
		case 6:
			return precpred(_ctx, 15);
		case 7:
			return precpred(_ctx, 14);
		case 8:
			return precpred(_ctx, 13);
		case 9:
			return precpred(_ctx, 12);
		case 10:
			return precpred(_ctx, 11);
		case 11:
			return precpred(_ctx, 10);
		case 12:
			return precpred(_ctx, 9);
		case 13:
			return precpred(_ctx, 27);
		case 14:
			return precpred(_ctx, 26);
		case 15:
			return precpred(_ctx, 22);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3:\u0148\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\3\2\7\2\64\n\2\f\2\16\2\67\13\2\3\2\3\2\3\3\3\3\3\3\5\3>\n\3\3\4\3\4"+
		"\3\4\3\4\5\4D\n\4\3\4\3\4\7\4H\n\4\f\4\16\4K\13\4\3\4\3\4\3\4\3\5\3\5"+
		"\3\5\3\5\3\5\3\5\3\6\3\6\3\6\7\6Y\n\6\f\6\16\6\\\13\6\3\6\3\6\3\7\3\7"+
		"\3\7\3\7\7\7d\n\7\f\7\16\7g\13\7\5\7i\n\7\3\7\3\7\3\b\3\b\3\b\3\t\3\t"+
		"\3\t\3\t\3\t\3\n\3\n\3\n\3\13\3\13\3\13\3\13\7\13|\n\13\f\13\16\13\177"+
		"\13\13\3\f\3\f\3\f\5\f\u0084\n\f\3\r\3\r\3\r\5\r\u0089\n\r\3\r\3\r\3\r"+
		"\7\r\u008e\n\r\f\r\16\r\u0091\13\r\3\16\3\16\3\17\3\17\5\17\u0097\n\17"+
		"\3\20\3\20\3\20\3\20\3\20\3\20\5\20\u009f\n\20\3\21\5\21\u00a2\n\21\3"+
		"\21\3\21\3\22\3\22\3\22\3\22\3\22\3\22\3\22\5\22\u00ad\n\22\3\22\3\22"+
		"\3\22\3\22\5\22\u00b3\n\22\5\22\u00b5\n\22\3\23\3\23\3\23\3\23\3\23\3"+
		"\23\3\23\5\23\u00be\n\23\3\24\3\24\3\24\5\24\u00c3\n\24\3\24\3\24\5\24"+
		"\u00c7\n\24\3\24\3\24\5\24\u00cb\n\24\3\24\3\24\3\24\3\24\5\24\u00d1\n"+
		"\24\3\25\3\25\3\25\3\25\5\25\u00d7\n\25\3\25\3\25\3\26\3\26\3\26\3\26"+
		"\3\26\3\26\6\26\u00e1\n\26\r\26\16\26\u00e2\3\26\3\26\7\26\u00e7\n\26"+
		"\f\26\16\26\u00ea\13\26\5\26\u00ec\n\26\3\27\3\27\5\27\u00f0\n\27\3\27"+
		"\3\27\3\27\3\27\3\30\3\30\3\30\3\30\7\30\u00fa\n\30\f\30\16\30\u00fd\13"+
		"\30\5\30\u00ff\n\30\3\30\3\30\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31"+
		"\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\5\31\u0114\n\31\3\31\3\31"+
		"\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31"+
		"\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31"+
		"\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31"+
		"\3\31\7\31\u0143\n\31\f\31\16\31\u0146\13\31\3\31\2\4\30\60\32\2\4\6\b"+
		"\n\f\16\20\22\24\26\30\32\34\36 \"$&(*,.\60\2\13\3\2\21\23\3\2\3\4\3\2"+
		"&\'\4\2\20\20\63\63\3\2./\4\2\b\t\13\f\4\2\n\n\r\r\3\2\60\62\3\2\16\17"+
		"\2\u0173\2\65\3\2\2\2\4=\3\2\2\2\6?\3\2\2\2\bO\3\2\2\2\nU\3\2\2\2\f_\3"+
		"\2\2\2\16l\3\2\2\2\20o\3\2\2\2\22t\3\2\2\2\24w\3\2\2\2\26\u0080\3\2\2"+
		"\2\30\u0088\3\2\2\2\32\u0092\3\2\2\2\34\u0096\3\2\2\2\36\u009e\3\2\2\2"+
		" \u00a1\3\2\2\2\"\u00a5\3\2\2\2$\u00b6\3\2\2\2&\u00bf\3\2\2\2(\u00d6\3"+
		"\2\2\2*\u00eb\3\2\2\2,\u00ed\3\2\2\2.\u00f5\3\2\2\2\60\u0113\3\2\2\2\62"+
		"\64\5\4\3\2\63\62\3\2\2\2\64\67\3\2\2\2\65\63\3\2\2\2\65\66\3\2\2\2\66"+
		"8\3\2\2\2\67\65\3\2\2\289\7\2\2\39\3\3\2\2\2:>\5\6\4\2;>\5\20\t\2<>\5"+
		"\22\n\2=:\3\2\2\2=;\3\2\2\2=<\3\2\2\2>\5\3\2\2\2?@\7\36\2\2@A\7\67\2\2"+
		"AC\7,\2\2BD\5\b\5\2CB\3\2\2\2CD\3\2\2\2DI\3\2\2\2EH\5\22\n\2FH\5\20\t"+
		"\2GE\3\2\2\2GF\3\2\2\2HK\3\2\2\2IG\3\2\2\2IJ\3\2\2\2JL\3\2\2\2KI\3\2\2"+
		"\2LM\7-\2\2MN\7#\2\2N\7\3\2\2\2OP\7\67\2\2PQ\7(\2\2QR\5\16\b\2RS\7)\2"+
		"\2ST\5\n\6\2T\t\3\2\2\2UZ\7,\2\2VY\5\n\6\2WY\5\36\20\2XV\3\2\2\2XW\3\2"+
		"\2\2Y\\\3\2\2\2ZX\3\2\2\2Z[\3\2\2\2[]\3\2\2\2\\Z\3\2\2\2]^\7-\2\2^\13"+
		"\3\2\2\2_h\7(\2\2`e\5\16\b\2ab\7\"\2\2bd\5\16\b\2ca\3\2\2\2dg\3\2\2\2"+
		"ec\3\2\2\2ef\3\2\2\2fi\3\2\2\2ge\3\2\2\2h`\3\2\2\2hi\3\2\2\2ij\3\2\2\2"+
		"jk\7)\2\2k\r\3\2\2\2lm\5\30\r\2mn\7\67\2\2n\17\3\2\2\2op\5\34\17\2pq\7"+
		"\67\2\2qr\5\f\7\2rs\5\n\6\2s\21\3\2\2\2tu\5\24\13\2uv\7#\2\2v\23\3\2\2"+
		"\2wx\5\30\r\2x}\5\26\f\2yz\7\"\2\2z|\5\26\f\2{y\3\2\2\2|\177\3\2\2\2}"+
		"{\3\2\2\2}~\3\2\2\2~\25\3\2\2\2\177}\3\2\2\2\u0080\u0083\7\67\2\2\u0081"+
		"\u0082\7%\2\2\u0082\u0084\5\60\31\2\u0083\u0081\3\2\2\2\u0083\u0084\3"+
		"\2\2\2\u0084\27\3\2\2\2\u0085\u0086\b\r\1\2\u0086\u0089\7\67\2\2\u0087"+
		"\u0089\5\32\16\2\u0088\u0085\3\2\2\2\u0088\u0087\3\2\2\2\u0089\u008f\3"+
		"\2\2\2\u008a\u008b\f\3\2\2\u008b\u008c\7*\2\2\u008c\u008e\7+\2\2\u008d"+
		"\u008a\3\2\2\2\u008e\u0091\3\2\2\2\u008f\u008d\3\2\2\2\u008f\u0090\3\2"+
		"\2\2\u0090\31\3\2\2\2\u0091\u008f\3\2\2\2\u0092\u0093\t\2\2\2\u0093\33"+
		"\3\2\2\2\u0094\u0097\5\30\r\2\u0095\u0097\7\25\2\2\u0096\u0094\3\2\2\2"+
		"\u0096\u0095\3\2\2\2\u0097\35\3\2\2\2\u0098\u009f\5\22\n\2\u0099\u009f"+
		"\5 \21\2\u009a\u009f\5\"\22\2\u009b\u009f\5$\23\2\u009c\u009f\5&\24\2"+
		"\u009d\u009f\5(\25\2\u009e\u0098\3\2\2\2\u009e\u0099\3\2\2\2\u009e\u009a"+
		"\3\2\2\2\u009e\u009b\3\2\2\2\u009e\u009c\3\2\2\2\u009e\u009d\3\2\2\2\u009f"+
		"\37\3\2\2\2\u00a0\u00a2\5\60\31\2\u00a1\u00a0\3\2\2\2\u00a1\u00a2\3\2"+
		"\2\2\u00a2\u00a3\3\2\2\2\u00a3\u00a4\7#\2\2\u00a4!\3\2\2\2\u00a5\u00a6"+
		"\7\26\2\2\u00a6\u00a7\7(\2\2\u00a7\u00a8\5\60\31\2\u00a8\u00ac\7)\2\2"+
		"\u00a9\u00ad\5\n\6\2\u00aa\u00ad\5\36\20\2\u00ab\u00ad\7#\2\2\u00ac\u00a9"+
		"\3\2\2\2\u00ac\u00aa\3\2\2\2\u00ac\u00ab\3\2\2\2\u00ad\u00b4\3\2\2\2\u00ae"+
		"\u00b2\7\27\2\2\u00af\u00b3\5\n\6\2\u00b0\u00b3\5\36\20\2\u00b1\u00b3"+
		"\7#\2\2\u00b2\u00af\3\2\2\2\u00b2\u00b0\3\2\2\2\u00b2\u00b1\3\2\2\2\u00b3"+
		"\u00b5\3\2\2\2\u00b4\u00ae\3\2\2\2\u00b4\u00b5\3\2\2\2\u00b5#\3\2\2\2"+
		"\u00b6\u00b7\7\31\2\2\u00b7\u00b8\7(\2\2\u00b8\u00b9\5\60\31\2\u00b9\u00bd"+
		"\7)\2\2\u00ba\u00be\5\n\6\2\u00bb\u00be\5\36\20\2\u00bc\u00be\7#\2\2\u00bd"+
		"\u00ba\3\2\2\2\u00bd\u00bb\3\2\2\2\u00bd\u00bc\3\2\2\2\u00be%\3\2\2\2"+
		"\u00bf\u00c0\7\30\2\2\u00c0\u00c2\7(\2\2\u00c1\u00c3\5\26\f\2\u00c2\u00c1"+
		"\3\2\2\2\u00c2\u00c3\3\2\2\2\u00c3\u00c4\3\2\2\2\u00c4\u00c6\7#\2\2\u00c5"+
		"\u00c7\5\60\31\2\u00c6\u00c5\3\2\2\2\u00c6\u00c7\3\2\2\2\u00c7\u00c8\3"+
		"\2\2\2\u00c8\u00ca\7#\2\2\u00c9\u00cb\5\60\31\2\u00ca\u00c9\3\2\2\2\u00ca"+
		"\u00cb\3\2\2\2\u00cb\u00cc\3\2\2\2\u00cc\u00d0\7)\2\2\u00cd\u00d1\5\n"+
		"\6\2\u00ce\u00d1\5\36\20\2\u00cf\u00d1\7#\2\2\u00d0\u00cd\3\2\2\2\u00d0"+
		"\u00ce\3\2\2\2\u00d0\u00cf\3\2\2\2\u00d1\'\3\2\2\2\u00d2\u00d3\7\34\2"+
		"\2\u00d3\u00d7\5\60\31\2\u00d4\u00d7\7\33\2\2\u00d5\u00d7\7\32\2\2\u00d6"+
		"\u00d2\3\2\2\2\u00d6\u00d4\3\2\2\2\u00d6\u00d5\3\2\2\2\u00d7\u00d8\3\2"+
		"\2\2\u00d8\u00d9\7#\2\2\u00d9)\3\2\2\2\u00da\u00ec\7\67\2\2\u00db\u00ec"+
		"\5\32\16\2\u00dc\u00dd\7*\2\2\u00dd\u00de\5\60\31\2\u00de\u00df\7+\2\2"+
		"\u00df\u00e1\3\2\2\2\u00e0\u00dc\3\2\2\2\u00e1\u00e2\3\2\2\2\u00e2\u00e0"+
		"\3\2\2\2\u00e2\u00e3\3\2\2\2\u00e3\u00e8\3\2\2\2\u00e4\u00e5\7*\2\2\u00e5"+
		"\u00e7\7+\2\2\u00e6\u00e4\3\2\2\2\u00e7\u00ea\3\2\2\2\u00e8\u00e6\3\2"+
		"\2\2\u00e8\u00e9\3\2\2\2\u00e9\u00ec\3\2\2\2\u00ea\u00e8\3\2\2\2\u00eb"+
		"\u00da\3\2\2\2\u00eb\u00db\3\2\2\2\u00eb\u00e0\3\2\2\2\u00ec+\3\2\2\2"+
		"\u00ed\u00ef\7 \2\2\u00ee\u00f0\5\f\7\2\u00ef\u00ee\3\2\2\2\u00ef\u00f0"+
		"\3\2\2\2\u00f0\u00f1\3\2\2\2\u00f1\u00f2\7$\2\2\u00f2\u00f3\5\n\6\2\u00f3"+
		"\u00f4\5.\30\2\u00f4-\3\2\2\2\u00f5\u00fe\7(\2\2\u00f6\u00fb\5\60\31\2"+
		"\u00f7\u00f8\7\"\2\2\u00f8\u00fa\5\60\31\2\u00f9\u00f7\3\2\2\2\u00fa\u00fd"+
		"\3\2\2\2\u00fb\u00f9\3\2\2\2\u00fb\u00fc\3\2\2\2\u00fc\u00ff\3\2\2\2\u00fd"+
		"\u00fb\3\2\2\2\u00fe\u00f6\3\2\2\2\u00fe\u00ff\3\2\2\2\u00ff\u0100\3\2"+
		"\2\2\u0100\u0101\7)\2\2\u0101/\3\2\2\2\u0102\u0103\b\31\1\2\u0103\u0104"+
		"\t\3\2\2\u0104\u0114\5\60\31\32\u0105\u0106\t\4\2\2\u0106\u0114\5\60\31"+
		"\31\u0107\u0108\t\5\2\2\u0108\u0114\5\60\31\27\u0109\u010a\7\35\2\2\u010a"+
		"\u0114\5*\26\2\u010b\u0114\7\67\2\2\u010c\u0114\7\37\2\2\u010d\u0114\7"+
		"\24\2\2\u010e\u0114\7\65\2\2\u010f\u0114\7\64\2\2\u0110\u0114\7\66\2\2"+
		"\u0111\u0114\5,\27\2\u0112\u0114\5.\30\2\u0113\u0102\3\2\2\2\u0113\u0105"+
		"\3\2\2\2\u0113\u0107\3\2\2\2\u0113\u0109\3\2\2\2\u0113\u010b\3\2\2\2\u0113"+
		"\u010c\3\2\2\2\u0113\u010d\3\2\2\2\u0113\u010e\3\2\2\2\u0113\u010f\3\2"+
		"\2\2\u0113\u0110\3\2\2\2\u0113\u0111\3\2\2\2\u0113\u0112\3\2\2\2\u0114"+
		"\u0144\3\2\2\2\u0115\u0116\f\33\2\2\u0116\u0117\7!\2\2\u0117\u0143\5\60"+
		"\31\34\u0118\u0119\f\25\2\2\u0119\u011a\7\5\2\2\u011a\u0143\5\60\31\26"+
		"\u011b\u011c\f\24\2\2\u011c\u011d\7\6\2\2\u011d\u0143\5\60\31\25\u011e"+
		"\u011f\f\23\2\2\u011f\u0120\7\7\2\2\u0120\u0143\5\60\31\24\u0121\u0122"+
		"\f\22\2\2\u0122\u0123\7\3\2\2\u0123\u0143\5\60\31\23\u0124\u0125\f\21"+
		"\2\2\u0125\u0126\7\4\2\2\u0126\u0143\5\60\31\22\u0127\u0128\f\20\2\2\u0128"+
		"\u0129\t\6\2\2\u0129\u0143\5\60\31\21\u012a\u012b\f\17\2\2\u012b\u012c"+
		"\t\7\2\2\u012c\u0143\5\60\31\20\u012d\u012e\f\16\2\2\u012e\u012f\t\b\2"+
		"\2\u012f\u0143\5\60\31\17\u0130\u0131\f\r\2\2\u0131\u0132\t\t\2\2\u0132"+
		"\u0143\5\60\31\16\u0133\u0134\f\f\2\2\u0134\u0135\t\n\2\2\u0135\u0143"+
		"\5\60\31\r\u0136\u0137\f\13\2\2\u0137\u0138\7%\2\2\u0138\u0143\5\60\31"+
		"\13\u0139\u013a\f\35\2\2\u013a\u013b\7*\2\2\u013b\u013c\5\60\31\2\u013c"+
		"\u013d\7+\2\2\u013d\u0143\3\2\2\2\u013e\u013f\f\34\2\2\u013f\u0143\5."+
		"\30\2\u0140\u0141\f\30\2\2\u0141\u0143\t\4\2\2\u0142\u0115\3\2\2\2\u0142"+
		"\u0118\3\2\2\2\u0142\u011b\3\2\2\2\u0142\u011e\3\2\2\2\u0142\u0121\3\2"+
		"\2\2\u0142\u0124\3\2\2\2\u0142\u0127\3\2\2\2\u0142\u012a\3\2\2\2\u0142"+
		"\u012d\3\2\2\2\u0142\u0130\3\2\2\2\u0142\u0133\3\2\2\2\u0142\u0136\3\2"+
		"\2\2\u0142\u0139\3\2\2\2\u0142\u013e\3\2\2\2\u0142\u0140\3\2\2\2\u0143"+
		"\u0146\3\2\2\2\u0144\u0142\3\2\2\2\u0144\u0145\3\2\2\2\u0145\61\3\2\2"+
		"\2\u0146\u0144\3\2\2\2$\65=CGIXZeh}\u0083\u0088\u008f\u0096\u009e\u00a1"+
		"\u00ac\u00b2\u00b4\u00bd\u00c2\u00c6\u00ca\u00d0\u00d6\u00e2\u00e8\u00eb"+
		"\u00ef\u00fb\u00fe\u0113\u0142\u0144";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}