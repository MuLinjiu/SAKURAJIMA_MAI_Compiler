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
		RULE_suite = 4, RULE_block = 5, RULE_parameter_list = 6, RULE_parameter = 7, 
		RULE_function_define = 8, RULE_var_define_youfen = 9, RULE_var_define_wufen = 10, 
		RULE_var_define_sentence = 11, RULE_type = 12, RULE_basic_type = 13, RULE_func_type = 14, 
		RULE_statement = 15, RULE_expression_stmt = 16, RULE_if_stmt = 17, RULE_else_stmt = 18, 
		RULE_suite_statement = 19, RULE_while_stmt = 20, RULE_for_stmt = 21, RULE_for_start = 22, 
		RULE_for_finish = 23, RULE_return_stmt = 24, RULE_continue_stmt = 25, 
		RULE_break_stmt = 26, RULE_newor = 27, RULE_newor1 = 28, RULE_newor2 = 29, 
		RULE_lambada = 30, RULE_sentence_list = 31, RULE_expression = 32;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "define", "class_define", "constructor_define", "suite", "block", 
			"parameter_list", "parameter", "function_define", "var_define_youfen", 
			"var_define_wufen", "var_define_sentence", "type", "basic_type", "func_type", 
			"statement", "expression_stmt", "if_stmt", "else_stmt", "suite_statement", 
			"while_stmt", "for_stmt", "for_start", "for_finish", "return_stmt", "continue_stmt", 
			"break_stmt", "newor", "newor1", "newor2", "lambada", "sentence_list", 
			"expression"
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
			setState(79);
			match(CLASS);
			setState(80);
			match(Identifier);
			setState(81);
			match(LEFT_BRACE);
			setState(83);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,2,_ctx) ) {
			case 1:
				{
				setState(82);
				constructor_define();
				}
				break;
			}
			setState(89);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << INT) | (1L << BOOL) | (1L << STRING) | (1L << VOID) | (1L << Identifier))) != 0)) {
				{
				setState(87);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,3,_ctx) ) {
				case 1:
					{
					setState(85);
					var_define_youfen();
					}
					break;
				case 2:
					{
					setState(86);
					function_define();
					}
					break;
				}
				}
				setState(91);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(92);
			match(RIGHT_BRACE);
			setState(93);
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
		enterRule(_localctx, 6, RULE_constructor_define);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(95);
			match(Identifier);
			setState(96);
			match(LEFT_PAREN);
			setState(97);
			match(RIGHT_PAREN);
			setState(98);
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
		enterRule(_localctx, 8, RULE_suite);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(100);
			match(LEFT_BRACE);
			setState(104);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << ADD) | (1L << MINUS) | (1L << NOT) | (1L << INT) | (1L << BOOL) | (1L << STRING) | (1L << NULL) | (1L << IF) | (1L << FOR) | (1L << WHILE) | (1L << BREAK) | (1L << CONITNUE) | (1L << RETURN) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA_START) | (1L << SEMI) | (1L << LEFT_PAREN) | (1L << LEFT_BRACE) | (1L << FAN) | (1L << BOOL_CHOICE) | (1L << INT_CHOICE) | (1L << STRING_CHOICE) | (1L << Identifier))) != 0)) {
				{
				{
				setState(101);
				block();
				}
				}
				setState(106);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(107);
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
		enterRule(_localctx, 10, RULE_block);
		try {
			setState(112);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,6,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(109);
				statement();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(110);
				suite();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(111);
				match(SEMI);
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
		enterRule(_localctx, 12, RULE_parameter_list);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(114);
			match(LEFT_PAREN);
			setState(123);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << INT) | (1L << BOOL) | (1L << STRING) | (1L << Identifier))) != 0)) {
				{
				setState(115);
				parameter();
				setState(120);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMMA) {
					{
					{
					setState(116);
					match(COMMA);
					setState(117);
					parameter();
					}
					}
					setState(122);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(125);
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
		enterRule(_localctx, 14, RULE_parameter);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(127);
			type();
			setState(128);
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
		enterRule(_localctx, 16, RULE_function_define);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(130);
			func_type();
			setState(131);
			match(Identifier);
			setState(132);
			parameter_list();
			setState(133);
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
		enterRule(_localctx, 18, RULE_var_define_youfen);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(135);
			var_define_wufen();
			setState(136);
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
		enterRule(_localctx, 20, RULE_var_define_wufen);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(138);
			type();
			setState(139);
			var_define_sentence();
			setState(144);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(140);
				match(COMMA);
				setState(141);
				var_define_sentence();
				}
				}
				setState(146);
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
		enterRule(_localctx, 22, RULE_var_define_sentence);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(147);
			match(Identifier);
			setState(150);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ASSIGN) {
				{
				setState(148);
				match(ASSIGN);
				setState(149);
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
		enterRule(_localctx, 24, RULE_type);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(154);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Identifier:
				{
				setState(152);
				match(Identifier);
				}
				break;
			case INT:
			case BOOL:
			case STRING:
				{
				setState(153);
				basic_type();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(160);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==LEFT_BRACK) {
				{
				{
				setState(156);
				match(LEFT_BRACK);
				setState(157);
				match(RIGHT_BRACK);
				}
				}
				setState(162);
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
		enterRule(_localctx, 26, RULE_basic_type);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(163);
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
		enterRule(_localctx, 28, RULE_func_type);
		try {
			setState(167);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case INT:
			case BOOL:
			case STRING:
			case Identifier:
				enterOuterAlt(_localctx, 1);
				{
				setState(165);
				type();
				}
				break;
			case VOID:
				enterOuterAlt(_localctx, 2);
				{
				setState(166);
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
		enterRule(_localctx, 30, RULE_statement);
		try {
			setState(177);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,14,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(169);
				var_define_youfen();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(170);
				expression_stmt();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(171);
				if_stmt();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(172);
				while_stmt();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(173);
				for_stmt();
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(174);
				return_stmt();
				}
				break;
			case 7:
				enterOuterAlt(_localctx, 7);
				{
				setState(175);
				continue_stmt();
				}
				break;
			case 8:
				enterOuterAlt(_localctx, 8);
				{
				setState(176);
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
		enterRule(_localctx, 32, RULE_expression_stmt);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(180);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << ADD) | (1L << MINUS) | (1L << NOT) | (1L << NULL) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA_START) | (1L << LEFT_PAREN) | (1L << FAN) | (1L << BOOL_CHOICE) | (1L << INT_CHOICE) | (1L << STRING_CHOICE) | (1L << Identifier))) != 0)) {
				{
				setState(179);
				expression(0);
				}
			}

			setState(182);
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
		enterRule(_localctx, 34, RULE_if_stmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(184);
			match(IF);
			setState(185);
			match(LEFT_PAREN);
			setState(186);
			expression(0);
			setState(187);
			match(RIGHT_PAREN);
			setState(188);
			suite_statement();
			setState(190);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,16,_ctx) ) {
			case 1:
				{
				setState(189);
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
		enterRule(_localctx, 36, RULE_else_stmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			{
			setState(192);
			match(ELSE);
			setState(193);
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
		enterRule(_localctx, 38, RULE_suite_statement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(198);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,17,_ctx) ) {
			case 1:
				{
				setState(195);
				suite();
				}
				break;
			case 2:
				{
				setState(196);
				statement();
				}
				break;
			case 3:
				{
				setState(197);
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
		enterRule(_localctx, 40, RULE_while_stmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(200);
			match(WHILE);
			setState(201);
			match(LEFT_PAREN);
			setState(202);
			expression(0);
			setState(203);
			match(RIGHT_PAREN);
			setState(204);
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
		enterRule(_localctx, 42, RULE_for_stmt);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(206);
			match(FOR);
			setState(207);
			match(LEFT_PAREN);
			setState(209);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << ADD) | (1L << MINUS) | (1L << NOT) | (1L << INT) | (1L << BOOL) | (1L << STRING) | (1L << NULL) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA_START) | (1L << LEFT_PAREN) | (1L << FAN) | (1L << BOOL_CHOICE) | (1L << INT_CHOICE) | (1L << STRING_CHOICE) | (1L << Identifier))) != 0)) {
				{
				setState(208);
				for_start();
				}
			}

			setState(211);
			match(SEMI);
			setState(213);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << ADD) | (1L << MINUS) | (1L << NOT) | (1L << NULL) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA_START) | (1L << LEFT_PAREN) | (1L << FAN) | (1L << BOOL_CHOICE) | (1L << INT_CHOICE) | (1L << STRING_CHOICE) | (1L << Identifier))) != 0)) {
				{
				setState(212);
				for_finish();
				}
			}

			setState(215);
			match(SEMI);
			setState(217);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << ADD) | (1L << MINUS) | (1L << NOT) | (1L << NULL) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA_START) | (1L << LEFT_PAREN) | (1L << FAN) | (1L << BOOL_CHOICE) | (1L << INT_CHOICE) | (1L << STRING_CHOICE) | (1L << Identifier))) != 0)) {
				{
				setState(216);
				expression(0);
				}
			}

			setState(219);
			match(RIGHT_PAREN);
			setState(220);
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
		enterRule(_localctx, 44, RULE_for_start);
		try {
			setState(224);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,21,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(222);
				expression(0);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(223);
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
		enterRule(_localctx, 46, RULE_for_finish);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(226);
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
		enterRule(_localctx, 48, RULE_return_stmt);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(228);
			match(RETURN);
			setState(230);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << ADD) | (1L << MINUS) | (1L << NOT) | (1L << NULL) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA_START) | (1L << LEFT_PAREN) | (1L << FAN) | (1L << BOOL_CHOICE) | (1L << INT_CHOICE) | (1L << STRING_CHOICE) | (1L << Identifier))) != 0)) {
				{
				setState(229);
				expression(0);
				}
			}

			setState(232);
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
		enterRule(_localctx, 50, RULE_continue_stmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(234);
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
		enterRule(_localctx, 52, RULE_break_stmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(236);
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
		enterRule(_localctx, 54, RULE_newor);
		try {
			int _alt;
			setState(259);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,26,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(238);
				match(Identifier);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(239);
				basic_type();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				{
				setState(242);
				_errHandler.sync(this);
				switch (_input.LA(1)) {
				case Identifier:
					{
					setState(240);
					match(Identifier);
					}
					break;
				case INT:
				case BOOL:
				case STRING:
					{
					setState(241);
					basic_type();
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				setState(248); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						{
						setState(244);
						match(LEFT_BRACK);
						setState(245);
						expression(0);
						setState(246);
						match(RIGHT_BRACK);
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(250); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,24,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				setState(256);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,25,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(252);
						match(LEFT_BRACK);
						setState(253);
						match(RIGHT_BRACK);
						}
						} 
					}
					setState(258);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,25,_ctx);
				}
				}
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

	public static class Newor1Context extends ParserRuleContext {
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
		public Newor1Context(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_newor1; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterNewor1(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitNewor1(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitNewor1(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Newor1Context newor1() throws RecognitionException {
		Newor1Context _localctx = new Newor1Context(_ctx, getState());
		enterRule(_localctx, 56, RULE_newor1);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(263);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Identifier:
				{
				setState(261);
				match(Identifier);
				}
				break;
			case INT:
			case BOOL:
			case STRING:
				{
				setState(262);
				basic_type();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(269); 
			_errHandler.sync(this);
			_alt = 1;
			do {
				switch (_alt) {
				case 1:
					{
					{
					setState(265);
					match(LEFT_BRACK);
					setState(266);
					expression(0);
					setState(267);
					match(RIGHT_BRACK);
					}
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				setState(271); 
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,28,_ctx);
			} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
			setState(275); 
			_errHandler.sync(this);
			_alt = 1;
			do {
				switch (_alt) {
				case 1:
					{
					{
					setState(273);
					match(LEFT_BRACK);
					setState(274);
					match(RIGHT_BRACK);
					}
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				setState(277); 
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,29,_ctx);
			} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
			setState(283); 
			_errHandler.sync(this);
			_alt = 1;
			do {
				switch (_alt) {
				case 1:
					{
					{
					setState(279);
					match(LEFT_BRACK);
					setState(280);
					expression(0);
					setState(281);
					match(RIGHT_BRACK);
					}
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				setState(285); 
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,30,_ctx);
			} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
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

	public static class Newor2Context extends ParserRuleContext {
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
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public Newor2Context(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_newor2; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterNewor2(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitNewor2(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitNewor2(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Newor2Context newor2() throws RecognitionException {
		Newor2Context _localctx = new Newor2Context(_ctx, getState());
		enterRule(_localctx, 58, RULE_newor2);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(289);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Identifier:
				{
				setState(287);
				match(Identifier);
				}
				break;
			case INT:
			case BOOL:
			case STRING:
				{
				setState(288);
				basic_type();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(293); 
			_errHandler.sync(this);
			_alt = 1;
			do {
				switch (_alt) {
				case 1:
					{
					{
					setState(291);
					match(LEFT_BRACK);
					setState(292);
					match(RIGHT_BRACK);
					}
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				setState(295); 
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,32,_ctx);
			} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
			setState(303);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,33,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(297);
					match(LEFT_BRACK);
					setState(298);
					expression(0);
					setState(299);
					match(RIGHT_BRACK);
					}
					} 
				}
				setState(305);
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
			setState(306);
			match(LAMBDA_START);
			setState(308);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==LEFT_PAREN) {
				{
				setState(307);
				parameter_list();
				}
			}

			setState(310);
			match(ARROW);
			setState(311);
			suite();
			setState(312);
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
			setState(314);
			match(LEFT_PAREN);
			setState(323);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << ADD) | (1L << MINUS) | (1L << NOT) | (1L << NULL) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA_START) | (1L << LEFT_PAREN) | (1L << FAN) | (1L << BOOL_CHOICE) | (1L << INT_CHOICE) | (1L << STRING_CHOICE) | (1L << Identifier))) != 0)) {
				{
				setState(315);
				expression(0);
				setState(320);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMMA) {
					{
					{
					setState(316);
					match(COMMA);
					setState(317);
					expression(0);
					}
					}
					setState(322);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(325);
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
	public static class Newwrong2Context extends ExpressionContext {
		public TerminalNode NEW() { return getToken(MxstarParser.NEW, 0); }
		public Newor2Context newor2() {
			return getRuleContext(Newor2Context.class,0);
		}
		public Newwrong2Context(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterNewwrong2(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitNewwrong2(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitNewwrong2(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Newwrong1Context extends ExpressionContext {
		public TerminalNode NEW() { return getToken(MxstarParser.NEW, 0); }
		public Newor1Context newor1() {
			return getRuleContext(Newor1Context.class,0);
		}
		public Newwrong1Context(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterNewwrong1(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitNewwrong1(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxstarVisitor ) return ((MxstarVisitor<? extends T>)visitor).visitNewwrong1(this);
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
			setState(349);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,37,_ctx) ) {
			case 1:
				{
				_localctx = new UnaryexprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(328);
				_la = _input.LA(1);
				if ( !(_la==ADD || _la==MINUS) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(329);
				expression(25);
				}
				break;
			case 2:
				{
				_localctx = new UnaryexprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(330);
				_la = _input.LA(1);
				if ( !(_la==NOT || _la==FAN) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(331);
				expression(23);
				}
				break;
			case 3:
				{
				_localctx = new NewexprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(332);
				match(NEW);
				setState(333);
				newor();
				}
				break;
			case 4:
				{
				_localctx = new Newwrong1Context(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(334);
				match(NEW);
				setState(335);
				newor1();
				}
				break;
			case 5:
				{
				_localctx = new Newwrong2Context(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(336);
				match(NEW);
				setState(337);
				newor2();
				}
				break;
			case 6:
				{
				_localctx = new BasicexprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(338);
				match(Identifier);
				}
				break;
			case 7:
				{
				_localctx = new BasicexprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(339);
				match(THIS);
				}
				break;
			case 8:
				{
				_localctx = new BasicexprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(340);
				match(NULL);
				}
				break;
			case 9:
				{
				_localctx = new BasicexprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(341);
				match(INT_CHOICE);
				}
				break;
			case 10:
				{
				_localctx = new BasicexprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(342);
				match(BOOL_CHOICE);
				}
				break;
			case 11:
				{
				_localctx = new BasicexprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(343);
				match(STRING_CHOICE);
				}
				break;
			case 12:
				{
				_localctx = new LambadaexprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(344);
				lambada();
				}
				break;
			case 13:
				{
				_localctx = new BracketxprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(345);
				match(LEFT_PAREN);
				setState(346);
				expression(0);
				setState(347);
				match(RIGHT_PAREN);
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(400);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,39,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(398);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,38,_ctx) ) {
					case 1:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(351);
						if (!(precpred(_ctx, 29))) throw new FailedPredicateException(this, "precpred(_ctx, 29)");
						setState(352);
						match(DOT);
						setState(353);
						expression(30);
						}
						break;
					case 2:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(354);
						if (!(precpred(_ctx, 19))) throw new FailedPredicateException(this, "precpred(_ctx, 19)");
						setState(355);
						match(STAR);
						setState(356);
						expression(20);
						}
						break;
					case 3:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(357);
						if (!(precpred(_ctx, 18))) throw new FailedPredicateException(this, "precpred(_ctx, 18)");
						setState(358);
						match(DIVIDE);
						setState(359);
						expression(19);
						}
						break;
					case 4:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(360);
						if (!(precpred(_ctx, 17))) throw new FailedPredicateException(this, "precpred(_ctx, 17)");
						setState(361);
						match(MOD);
						setState(362);
						expression(18);
						}
						break;
					case 5:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(363);
						if (!(precpred(_ctx, 16))) throw new FailedPredicateException(this, "precpred(_ctx, 16)");
						setState(364);
						match(ADD);
						setState(365);
						expression(17);
						}
						break;
					case 6:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(366);
						if (!(precpred(_ctx, 15))) throw new FailedPredicateException(this, "precpred(_ctx, 15)");
						setState(367);
						match(MINUS);
						setState(368);
						expression(16);
						}
						break;
					case 7:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(369);
						if (!(precpred(_ctx, 14))) throw new FailedPredicateException(this, "precpred(_ctx, 14)");
						setState(370);
						_la = _input.LA(1);
						if ( !(_la==LEFT_SHIFT || _la==RIGHT_SHIFT) ) {
						_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(371);
						expression(15);
						}
						break;
					case 8:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(372);
						if (!(precpred(_ctx, 13))) throw new FailedPredicateException(this, "precpred(_ctx, 13)");
						setState(373);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << LESS) | (1L << GREATER) | (1L << LESS_E) | (1L << GREATER_E))) != 0)) ) {
						_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(374);
						expression(14);
						}
						break;
					case 9:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(375);
						if (!(precpred(_ctx, 12))) throw new FailedPredicateException(this, "precpred(_ctx, 12)");
						setState(376);
						_la = _input.LA(1);
						if ( !(_la==EQUAL || _la==NOT_EQUAL) ) {
						_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(377);
						expression(13);
						}
						break;
					case 10:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(378);
						if (!(precpred(_ctx, 11))) throw new FailedPredicateException(this, "precpred(_ctx, 11)");
						setState(379);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << OR) | (1L << XOR) | (1L << AND))) != 0)) ) {
						_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(380);
						expression(12);
						}
						break;
					case 11:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(381);
						if (!(precpred(_ctx, 10))) throw new FailedPredicateException(this, "precpred(_ctx, 10)");
						setState(382);
						_la = _input.LA(1);
						if ( !(_la==AND_AND || _la==OR_OR) ) {
						_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(383);
						expression(11);
						}
						break;
					case 12:
						{
						_localctx = new BinaryexprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(384);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(385);
						match(ASSIGN);
						setState(386);
						expression(9);
						}
						break;
					case 13:
						{
						_localctx = new HanshudiaoyongContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(387);
						if (!(precpred(_ctx, 28))) throw new FailedPredicateException(this, "precpred(_ctx, 28)");
						setState(388);
						sentence_list();
						}
						break;
					case 14:
						{
						_localctx = new PrePLUSMINUSContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(389);
						if (!(precpred(_ctx, 27))) throw new FailedPredicateException(this, "precpred(_ctx, 27)");
						setState(390);
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
						setState(391);
						if (!(precpred(_ctx, 26))) throw new FailedPredicateException(this, "precpred(_ctx, 26)");
						setState(392);
						match(LEFT_BRACK);
						setState(393);
						expression(0);
						setState(394);
						match(RIGHT_BRACK);
						}
						break;
					case 16:
						{
						_localctx = new BackPLUSMINUSContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(396);
						if (!(precpred(_ctx, 24))) throw new FailedPredicateException(this, "precpred(_ctx, 24)");
						setState(397);
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
				setState(402);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,39,_ctx);
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
			return precpred(_ctx, 29);
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
			return precpred(_ctx, 28);
		case 13:
			return precpred(_ctx, 27);
		case 14:
			return precpred(_ctx, 26);
		case 15:
			return precpred(_ctx, 24);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3:\u0196\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \4!"+
		"\t!\4\"\t\"\3\2\7\2F\n\2\f\2\16\2I\13\2\3\2\3\2\3\3\3\3\3\3\5\3P\n\3\3"+
		"\4\3\4\3\4\3\4\5\4V\n\4\3\4\3\4\7\4Z\n\4\f\4\16\4]\13\4\3\4\3\4\3\4\3"+
		"\5\3\5\3\5\3\5\3\5\3\6\3\6\7\6i\n\6\f\6\16\6l\13\6\3\6\3\6\3\7\3\7\3\7"+
		"\5\7s\n\7\3\b\3\b\3\b\3\b\7\by\n\b\f\b\16\b|\13\b\5\b~\n\b\3\b\3\b\3\t"+
		"\3\t\3\t\3\n\3\n\3\n\3\n\3\n\3\13\3\13\3\13\3\f\3\f\3\f\3\f\7\f\u0091"+
		"\n\f\f\f\16\f\u0094\13\f\3\r\3\r\3\r\5\r\u0099\n\r\3\16\3\16\5\16\u009d"+
		"\n\16\3\16\3\16\7\16\u00a1\n\16\f\16\16\16\u00a4\13\16\3\17\3\17\3\20"+
		"\3\20\5\20\u00aa\n\20\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\5\21\u00b4"+
		"\n\21\3\22\5\22\u00b7\n\22\3\22\3\22\3\23\3\23\3\23\3\23\3\23\3\23\5\23"+
		"\u00c1\n\23\3\24\3\24\3\24\3\25\3\25\3\25\5\25\u00c9\n\25\3\26\3\26\3"+
		"\26\3\26\3\26\3\26\3\27\3\27\3\27\5\27\u00d4\n\27\3\27\3\27\5\27\u00d8"+
		"\n\27\3\27\3\27\5\27\u00dc\n\27\3\27\3\27\3\27\3\30\3\30\5\30\u00e3\n"+
		"\30\3\31\3\31\3\32\3\32\5\32\u00e9\n\32\3\32\3\32\3\33\3\33\3\34\3\34"+
		"\3\35\3\35\3\35\3\35\5\35\u00f5\n\35\3\35\3\35\3\35\3\35\6\35\u00fb\n"+
		"\35\r\35\16\35\u00fc\3\35\3\35\7\35\u0101\n\35\f\35\16\35\u0104\13\35"+
		"\5\35\u0106\n\35\3\36\3\36\5\36\u010a\n\36\3\36\3\36\3\36\3\36\6\36\u0110"+
		"\n\36\r\36\16\36\u0111\3\36\3\36\6\36\u0116\n\36\r\36\16\36\u0117\3\36"+
		"\3\36\3\36\3\36\6\36\u011e\n\36\r\36\16\36\u011f\3\37\3\37\5\37\u0124"+
		"\n\37\3\37\3\37\6\37\u0128\n\37\r\37\16\37\u0129\3\37\3\37\3\37\3\37\7"+
		"\37\u0130\n\37\f\37\16\37\u0133\13\37\3 \3 \5 \u0137\n \3 \3 \3 \3 \3"+
		"!\3!\3!\3!\7!\u0141\n!\f!\16!\u0144\13!\5!\u0146\n!\3!\3!\3\"\3\"\3\""+
		"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3"+
		"\"\3\"\5\"\u0160\n\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3"+
		"\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\""+
		"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\7"+
		"\"\u0191\n\"\f\"\16\"\u0194\13\"\3\"\2\3B#\2\4\6\b\n\f\16\20\22\24\26"+
		"\30\32\34\36 \"$&(*,.\60\62\64\668:<>@B\2\13\3\2\21\23\3\2\3\4\4\2\20"+
		"\20\63\63\3\2./\4\2\b\t\13\f\4\2\n\n\r\r\3\2\60\62\3\2\16\17\3\2&\'\2"+
		"\u01bf\2G\3\2\2\2\4O\3\2\2\2\6Q\3\2\2\2\ba\3\2\2\2\nf\3\2\2\2\fr\3\2\2"+
		"\2\16t\3\2\2\2\20\u0081\3\2\2\2\22\u0084\3\2\2\2\24\u0089\3\2\2\2\26\u008c"+
		"\3\2\2\2\30\u0095\3\2\2\2\32\u009c\3\2\2\2\34\u00a5\3\2\2\2\36\u00a9\3"+
		"\2\2\2 \u00b3\3\2\2\2\"\u00b6\3\2\2\2$\u00ba\3\2\2\2&\u00c2\3\2\2\2(\u00c8"+
		"\3\2\2\2*\u00ca\3\2\2\2,\u00d0\3\2\2\2.\u00e2\3\2\2\2\60\u00e4\3\2\2\2"+
		"\62\u00e6\3\2\2\2\64\u00ec\3\2\2\2\66\u00ee\3\2\2\28\u0105\3\2\2\2:\u0109"+
		"\3\2\2\2<\u0123\3\2\2\2>\u0134\3\2\2\2@\u013c\3\2\2\2B\u015f\3\2\2\2D"+
		"F\5\4\3\2ED\3\2\2\2FI\3\2\2\2GE\3\2\2\2GH\3\2\2\2HJ\3\2\2\2IG\3\2\2\2"+
		"JK\7\2\2\3K\3\3\2\2\2LP\5\6\4\2MP\5\22\n\2NP\5\24\13\2OL\3\2\2\2OM\3\2"+
		"\2\2ON\3\2\2\2P\5\3\2\2\2QR\7\36\2\2RS\7\67\2\2SU\7,\2\2TV\5\b\5\2UT\3"+
		"\2\2\2UV\3\2\2\2V[\3\2\2\2WZ\5\24\13\2XZ\5\22\n\2YW\3\2\2\2YX\3\2\2\2"+
		"Z]\3\2\2\2[Y\3\2\2\2[\\\3\2\2\2\\^\3\2\2\2][\3\2\2\2^_\7-\2\2_`\7#\2\2"+
		"`\7\3\2\2\2ab\7\67\2\2bc\7(\2\2cd\7)\2\2de\5\n\6\2e\t\3\2\2\2fj\7,\2\2"+
		"gi\5\f\7\2hg\3\2\2\2il\3\2\2\2jh\3\2\2\2jk\3\2\2\2km\3\2\2\2lj\3\2\2\2"+
		"mn\7-\2\2n\13\3\2\2\2os\5 \21\2ps\5\n\6\2qs\7#\2\2ro\3\2\2\2rp\3\2\2\2"+
		"rq\3\2\2\2s\r\3\2\2\2t}\7(\2\2uz\5\20\t\2vw\7\"\2\2wy\5\20\t\2xv\3\2\2"+
		"\2y|\3\2\2\2zx\3\2\2\2z{\3\2\2\2{~\3\2\2\2|z\3\2\2\2}u\3\2\2\2}~\3\2\2"+
		"\2~\177\3\2\2\2\177\u0080\7)\2\2\u0080\17\3\2\2\2\u0081\u0082\5\32\16"+
		"\2\u0082\u0083\7\67\2\2\u0083\21\3\2\2\2\u0084\u0085\5\36\20\2\u0085\u0086"+
		"\7\67\2\2\u0086\u0087\5\16\b\2\u0087\u0088\5\n\6\2\u0088\23\3\2\2\2\u0089"+
		"\u008a\5\26\f\2\u008a\u008b\7#\2\2\u008b\25\3\2\2\2\u008c\u008d\5\32\16"+
		"\2\u008d\u0092\5\30\r\2\u008e\u008f\7\"\2\2\u008f\u0091\5\30\r\2\u0090"+
		"\u008e\3\2\2\2\u0091\u0094\3\2\2\2\u0092\u0090\3\2\2\2\u0092\u0093\3\2"+
		"\2\2\u0093\27\3\2\2\2\u0094\u0092\3\2\2\2\u0095\u0098\7\67\2\2\u0096\u0097"+
		"\7%\2\2\u0097\u0099\5B\"\2\u0098\u0096\3\2\2\2\u0098\u0099\3\2\2\2\u0099"+
		"\31\3\2\2\2\u009a\u009d\7\67\2\2\u009b\u009d\5\34\17\2\u009c\u009a\3\2"+
		"\2\2\u009c\u009b\3\2\2\2\u009d\u00a2\3\2\2\2\u009e\u009f\7*\2\2\u009f"+
		"\u00a1\7+\2\2\u00a0\u009e\3\2\2\2\u00a1\u00a4\3\2\2\2\u00a2\u00a0\3\2"+
		"\2\2\u00a2\u00a3\3\2\2\2\u00a3\33\3\2\2\2\u00a4\u00a2\3\2\2\2\u00a5\u00a6"+
		"\t\2\2\2\u00a6\35\3\2\2\2\u00a7\u00aa\5\32\16\2\u00a8\u00aa\7\25\2\2\u00a9"+
		"\u00a7\3\2\2\2\u00a9\u00a8\3\2\2\2\u00aa\37\3\2\2\2\u00ab\u00b4\5\24\13"+
		"\2\u00ac\u00b4\5\"\22\2\u00ad\u00b4\5$\23\2\u00ae\u00b4\5*\26\2\u00af"+
		"\u00b4\5,\27\2\u00b0\u00b4\5\62\32\2\u00b1\u00b4\5\64\33\2\u00b2\u00b4"+
		"\5\66\34\2\u00b3\u00ab\3\2\2\2\u00b3\u00ac\3\2\2\2\u00b3\u00ad\3\2\2\2"+
		"\u00b3\u00ae\3\2\2\2\u00b3\u00af\3\2\2\2\u00b3\u00b0\3\2\2\2\u00b3\u00b1"+
		"\3\2\2\2\u00b3\u00b2\3\2\2\2\u00b4!\3\2\2\2\u00b5\u00b7\5B\"\2\u00b6\u00b5"+
		"\3\2\2\2\u00b6\u00b7\3\2\2\2\u00b7\u00b8\3\2\2\2\u00b8\u00b9\7#\2\2\u00b9"+
		"#\3\2\2\2\u00ba\u00bb\7\26\2\2\u00bb\u00bc\7(\2\2\u00bc\u00bd\5B\"\2\u00bd"+
		"\u00be\7)\2\2\u00be\u00c0\5(\25\2\u00bf\u00c1\5&\24\2\u00c0\u00bf\3\2"+
		"\2\2\u00c0\u00c1\3\2\2\2\u00c1%\3\2\2\2\u00c2\u00c3\7\27\2\2\u00c3\u00c4"+
		"\5(\25\2\u00c4\'\3\2\2\2\u00c5\u00c9\5\n\6\2\u00c6\u00c9\5 \21\2\u00c7"+
		"\u00c9\7#\2\2\u00c8\u00c5\3\2\2\2\u00c8\u00c6\3\2\2\2\u00c8\u00c7\3\2"+
		"\2\2\u00c9)\3\2\2\2\u00ca\u00cb\7\31\2\2\u00cb\u00cc\7(\2\2\u00cc\u00cd"+
		"\5B\"\2\u00cd\u00ce\7)\2\2\u00ce\u00cf\5(\25\2\u00cf+\3\2\2\2\u00d0\u00d1"+
		"\7\30\2\2\u00d1\u00d3\7(\2\2\u00d2\u00d4\5.\30\2\u00d3\u00d2\3\2\2\2\u00d3"+
		"\u00d4\3\2\2\2\u00d4\u00d5\3\2\2\2\u00d5\u00d7\7#\2\2\u00d6\u00d8\5\60"+
		"\31\2\u00d7\u00d6\3\2\2\2\u00d7\u00d8\3\2\2\2\u00d8\u00d9\3\2\2\2\u00d9"+
		"\u00db\7#\2\2\u00da\u00dc\5B\"\2\u00db\u00da\3\2\2\2\u00db\u00dc\3\2\2"+
		"\2\u00dc\u00dd\3\2\2\2\u00dd\u00de\7)\2\2\u00de\u00df\5(\25\2\u00df-\3"+
		"\2\2\2\u00e0\u00e3\5B\"\2\u00e1\u00e3\5\26\f\2\u00e2\u00e0\3\2\2\2\u00e2"+
		"\u00e1\3\2\2\2\u00e3/\3\2\2\2\u00e4\u00e5\5B\"\2\u00e5\61\3\2\2\2\u00e6"+
		"\u00e8\7\34\2\2\u00e7\u00e9\5B\"\2\u00e8\u00e7\3\2\2\2\u00e8\u00e9\3\2"+
		"\2\2\u00e9\u00ea\3\2\2\2\u00ea\u00eb\7#\2\2\u00eb\63\3\2\2\2\u00ec\u00ed"+
		"\7\33\2\2\u00ed\65\3\2\2\2\u00ee\u00ef\7\32\2\2\u00ef\67\3\2\2\2\u00f0"+
		"\u0106\7\67\2\2\u00f1\u0106\5\34\17\2\u00f2\u00f5\7\67\2\2\u00f3\u00f5"+
		"\5\34\17\2\u00f4\u00f2\3\2\2\2\u00f4\u00f3\3\2\2\2\u00f5\u00fa\3\2\2\2"+
		"\u00f6\u00f7\7*\2\2\u00f7\u00f8\5B\"\2\u00f8\u00f9\7+\2\2\u00f9\u00fb"+
		"\3\2\2\2\u00fa\u00f6\3\2\2\2\u00fb\u00fc\3\2\2\2\u00fc\u00fa\3\2\2\2\u00fc"+
		"\u00fd\3\2\2\2\u00fd\u0102\3\2\2\2\u00fe\u00ff\7*\2\2\u00ff\u0101\7+\2"+
		"\2\u0100\u00fe\3\2\2\2\u0101\u0104\3\2\2\2\u0102\u0100\3\2\2\2\u0102\u0103"+
		"\3\2\2\2\u0103\u0106\3\2\2\2\u0104\u0102\3\2\2\2\u0105\u00f0\3\2\2\2\u0105"+
		"\u00f1\3\2\2\2\u0105\u00f4\3\2\2\2\u01069\3\2\2\2\u0107\u010a\7\67\2\2"+
		"\u0108\u010a\5\34\17\2\u0109\u0107\3\2\2\2\u0109\u0108\3\2\2\2\u010a\u010f"+
		"\3\2\2\2\u010b\u010c\7*\2\2\u010c\u010d\5B\"\2\u010d\u010e\7+\2\2\u010e"+
		"\u0110\3\2\2\2\u010f\u010b\3\2\2\2\u0110\u0111\3\2\2\2\u0111\u010f\3\2"+
		"\2\2\u0111\u0112\3\2\2\2\u0112\u0115\3\2\2\2\u0113\u0114\7*\2\2\u0114"+
		"\u0116\7+\2\2\u0115\u0113\3\2\2\2\u0116\u0117\3\2\2\2\u0117\u0115\3\2"+
		"\2\2\u0117\u0118\3\2\2\2\u0118\u011d\3\2\2\2\u0119\u011a\7*\2\2\u011a"+
		"\u011b\5B\"\2\u011b\u011c\7+\2\2\u011c\u011e\3\2\2\2\u011d\u0119\3\2\2"+
		"\2\u011e\u011f\3\2\2\2\u011f\u011d\3\2\2\2\u011f\u0120\3\2\2\2\u0120;"+
		"\3\2\2\2\u0121\u0124\7\67\2\2\u0122\u0124\5\34\17\2\u0123\u0121\3\2\2"+
		"\2\u0123\u0122\3\2\2\2\u0124\u0127\3\2\2\2\u0125\u0126\7*\2\2\u0126\u0128"+
		"\7+\2\2\u0127\u0125\3\2\2\2\u0128\u0129\3\2\2\2\u0129\u0127\3\2\2\2\u0129"+
		"\u012a\3\2\2\2\u012a\u0131\3\2\2\2\u012b\u012c\7*\2\2\u012c\u012d\5B\""+
		"\2\u012d\u012e\7+\2\2\u012e\u0130\3\2\2\2\u012f\u012b\3\2\2\2\u0130\u0133"+
		"\3\2\2\2\u0131\u012f\3\2\2\2\u0131\u0132\3\2\2\2\u0132=\3\2\2\2\u0133"+
		"\u0131\3\2\2\2\u0134\u0136\7 \2\2\u0135\u0137\5\16\b\2\u0136\u0135\3\2"+
		"\2\2\u0136\u0137\3\2\2\2\u0137\u0138\3\2\2\2\u0138\u0139\7$\2\2\u0139"+
		"\u013a\5\n\6\2\u013a\u013b\5@!\2\u013b?\3\2\2\2\u013c\u0145\7(\2\2\u013d"+
		"\u0142\5B\"\2\u013e\u013f\7\"\2\2\u013f\u0141\5B\"\2\u0140\u013e\3\2\2"+
		"\2\u0141\u0144\3\2\2\2\u0142\u0140\3\2\2\2\u0142\u0143\3\2\2\2\u0143\u0146"+
		"\3\2\2\2\u0144\u0142\3\2\2\2\u0145\u013d\3\2\2\2\u0145\u0146\3\2\2\2\u0146"+
		"\u0147\3\2\2\2\u0147\u0148\7)\2\2\u0148A\3\2\2\2\u0149\u014a\b\"\1\2\u014a"+
		"\u014b\t\3\2\2\u014b\u0160\5B\"\33\u014c\u014d\t\4\2\2\u014d\u0160\5B"+
		"\"\31\u014e\u014f\7\35\2\2\u014f\u0160\58\35\2\u0150\u0151\7\35\2\2\u0151"+
		"\u0160\5:\36\2\u0152\u0153\7\35\2\2\u0153\u0160\5<\37\2\u0154\u0160\7"+
		"\67\2\2\u0155\u0160\7\37\2\2\u0156\u0160\7\24\2\2\u0157\u0160\7\65\2\2"+
		"\u0158\u0160\7\64\2\2\u0159\u0160\7\66\2\2\u015a\u0160\5> \2\u015b\u015c"+
		"\7(\2\2\u015c\u015d\5B\"\2\u015d\u015e\7)\2\2\u015e\u0160\3\2\2\2\u015f"+
		"\u0149\3\2\2\2\u015f\u014c\3\2\2\2\u015f\u014e\3\2\2\2\u015f\u0150\3\2"+
		"\2\2\u015f\u0152\3\2\2\2\u015f\u0154\3\2\2\2\u015f\u0155\3\2\2\2\u015f"+
		"\u0156\3\2\2\2\u015f\u0157\3\2\2\2\u015f\u0158\3\2\2\2\u015f\u0159\3\2"+
		"\2\2\u015f\u015a\3\2\2\2\u015f\u015b\3\2\2\2\u0160\u0192\3\2\2\2\u0161"+
		"\u0162\f\37\2\2\u0162\u0163\7!\2\2\u0163\u0191\5B\" \u0164\u0165\f\25"+
		"\2\2\u0165\u0166\7\5\2\2\u0166\u0191\5B\"\26\u0167\u0168\f\24\2\2\u0168"+
		"\u0169\7\6\2\2\u0169\u0191\5B\"\25\u016a\u016b\f\23\2\2\u016b\u016c\7"+
		"\7\2\2\u016c\u0191\5B\"\24\u016d\u016e\f\22\2\2\u016e\u016f\7\3\2\2\u016f"+
		"\u0191\5B\"\23\u0170\u0171\f\21\2\2\u0171\u0172\7\4\2\2\u0172\u0191\5"+
		"B\"\22\u0173\u0174\f\20\2\2\u0174\u0175\t\5\2\2\u0175\u0191\5B\"\21\u0176"+
		"\u0177\f\17\2\2\u0177\u0178\t\6\2\2\u0178\u0191\5B\"\20\u0179\u017a\f"+
		"\16\2\2\u017a\u017b\t\7\2\2\u017b\u0191\5B\"\17\u017c\u017d\f\r\2\2\u017d"+
		"\u017e\t\b\2\2\u017e\u0191\5B\"\16\u017f\u0180\f\f\2\2\u0180\u0181\t\t"+
		"\2\2\u0181\u0191\5B\"\r\u0182\u0183\f\13\2\2\u0183\u0184\7%\2\2\u0184"+
		"\u0191\5B\"\13\u0185\u0186\f\36\2\2\u0186\u0191\5@!\2\u0187\u0188\f\35"+
		"\2\2\u0188\u0191\t\n\2\2\u0189\u018a\f\34\2\2\u018a\u018b\7*\2\2\u018b"+
		"\u018c\5B\"\2\u018c\u018d\7+\2\2\u018d\u0191\3\2\2\2\u018e\u018f\f\32"+
		"\2\2\u018f\u0191\t\n\2\2\u0190\u0161\3\2\2\2\u0190\u0164\3\2\2\2\u0190"+
		"\u0167\3\2\2\2\u0190\u016a\3\2\2\2\u0190\u016d\3\2\2\2\u0190\u0170\3\2"+
		"\2\2\u0190\u0173\3\2\2\2\u0190\u0176\3\2\2\2\u0190\u0179\3\2\2\2\u0190"+
		"\u017c\3\2\2\2\u0190\u017f\3\2\2\2\u0190\u0182\3\2\2\2\u0190\u0185\3\2"+
		"\2\2\u0190\u0187\3\2\2\2\u0190\u0189\3\2\2\2\u0190\u018e\3\2\2\2\u0191"+
		"\u0194\3\2\2\2\u0192\u0190\3\2\2\2\u0192\u0193\3\2\2\2\u0193C\3\2\2\2"+
		"\u0194\u0192\3\2\2\2*GOUY[jrz}\u0092\u0098\u009c\u00a2\u00a9\u00b3\u00b6"+
		"\u00c0\u00c8\u00d3\u00d7\u00db\u00e2\u00e8\u00f4\u00fc\u0102\u0105\u0109"+
		"\u0111\u0117\u011f\u0123\u0129\u0131\u0136\u0142\u0145\u015f\u0190\u0192";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}