// Generated from /Users/mulinjiu/Desktop/HXL/MxCompiler/src/Parser/Mxstar.g4 by ANTLR 4.9.1
package Parser;
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MxstarLexer extends Lexer {
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
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"ADD", "MINUS", "STAR", "DIVIDE", "MOD", "LESS", "GREATER", "EQUAL", 
			"LESS_E", "GREATER_E", "NOT_EQUAL", "AND_AND", "OR_OR", "NOT", "INT", 
			"BOOL", "STRING", "NULL", "VOID", "IF", "ELSE", "FOR", "WHILE", "BREAK", 
			"CONITNUE", "RETURN", "NEW", "CLASS", "THIS", "LAMBDA_START", "DOT", 
			"COMMA", "SEMI", "ARROW", "ASSIGN", "SELF_PLUS", "SELF_MINUS", "LEFT_PAREN", 
			"RIGHT_PAREN", "LEFT_BRACK", "RIGHT_BRACK", "LEFT_BRACE", "RIGHT_BRACE", 
			"LEFT_SHIFT", "RIGHT_SHIFT", "OR", "XOR", "AND", "FAN", "TRUE", "FALSE", 
			"DIGIT", "LETTER", "SPACE", "BOOL_CHOICE", "INT_CHOICE", "STRING_CHOICE", 
			"Identifier", "BlockComment", "BlankChar", "LineComment"
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


	public MxstarLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "Mxstar.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2:\u016d\b\1\4\2\t"+
		"\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \4!"+
		"\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t+\4"+
		",\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64\t"+
		"\64\4\65\t\65\4\66\t\66\4\67\t\67\48\t8\49\t9\4:\t:\4;\t;\4<\t<\4=\t="+
		"\4>\t>\3\2\3\2\3\3\3\3\3\4\3\4\3\5\3\5\3\6\3\6\3\7\3\7\3\b\3\b\3\t\3\t"+
		"\3\t\3\n\3\n\3\n\3\13\3\13\3\13\3\f\3\f\3\f\3\r\3\r\3\r\3\16\3\16\3\16"+
		"\3\17\3\17\3\20\3\20\3\20\3\20\3\21\3\21\3\21\3\21\3\21\3\22\3\22\3\22"+
		"\3\22\3\22\3\22\3\22\3\23\3\23\3\23\3\23\3\23\3\24\3\24\3\24\3\24\3\24"+
		"\3\25\3\25\3\25\3\26\3\26\3\26\3\26\3\26\3\27\3\27\3\27\3\27\3\30\3\30"+
		"\3\30\3\30\3\30\3\30\3\31\3\31\3\31\3\31\3\31\3\31\3\32\3\32\3\32\3\32"+
		"\3\32\3\32\3\32\3\32\3\32\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\34\3\34"+
		"\3\34\3\34\3\35\3\35\3\35\3\35\3\35\3\35\3\36\3\36\3\36\3\36\3\36\3\37"+
		"\3\37\3\37\3\37\3 \3 \3!\3!\3\"\3\"\3#\3#\3#\3$\3$\3%\3%\3%\3&\3&\3&\3"+
		"\'\3\'\3(\3(\3)\3)\3*\3*\3+\3+\3,\3,\3-\3-\3-\3.\3.\3.\3/\3/\3\60\3\60"+
		"\3\61\3\61\3\62\3\62\3\63\3\63\3\63\3\63\3\63\3\64\3\64\3\64\3\64\3\64"+
		"\3\64\3\65\3\65\3\66\3\66\3\67\3\67\38\38\58\u0133\n8\39\39\79\u0137\n"+
		"9\f9\169\u013a\139\39\59\u013d\n9\3:\3:\3:\3:\7:\u0143\n:\f:\16:\u0146"+
		"\13:\3:\3:\3;\3;\7;\u014c\n;\f;\16;\u014f\13;\3<\3<\3<\3<\7<\u0155\n<"+
		"\f<\16<\u0158\13<\3<\3<\3<\3<\3<\3=\3=\3=\3=\3>\3>\3>\3>\7>\u0167\n>\f"+
		">\16>\u016a\13>\3>\3>\4\u0144\u0156\2?\3\3\5\4\7\5\t\6\13\7\r\b\17\t\21"+
		"\n\23\13\25\f\27\r\31\16\33\17\35\20\37\21!\22#\23%\24\'\25)\26+\27-\30"+
		"/\31\61\32\63\33\65\34\67\359\36;\37= ?!A\"C#E$G%I&K\'M(O)Q*S+U,W-Y.["+
		"/]\60_\61a\62c\63e\2g\2i\2k\2m\2o\64q\65s\66u\67w8y9{:\3\2\13\3\2\62;"+
		"\5\2C\\aac|\3\2\63;\6\2\f\f\17\17$$^^\6\2$$^^pptt\4\2C\\c|\6\2\62;C\\"+
		"aac|\5\2\13\f\17\17\"\"\4\2\f\f\17\17\2\u016f\2\3\3\2\2\2\2\5\3\2\2\2"+
		"\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2\2\2\2\17\3\2\2\2\2\21\3"+
		"\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2\2\31\3\2\2\2\2\33\3\2\2"+
		"\2\2\35\3\2\2\2\2\37\3\2\2\2\2!\3\2\2\2\2#\3\2\2\2\2%\3\2\2\2\2\'\3\2"+
		"\2\2\2)\3\2\2\2\2+\3\2\2\2\2-\3\2\2\2\2/\3\2\2\2\2\61\3\2\2\2\2\63\3\2"+
		"\2\2\2\65\3\2\2\2\2\67\3\2\2\2\29\3\2\2\2\2;\3\2\2\2\2=\3\2\2\2\2?\3\2"+
		"\2\2\2A\3\2\2\2\2C\3\2\2\2\2E\3\2\2\2\2G\3\2\2\2\2I\3\2\2\2\2K\3\2\2\2"+
		"\2M\3\2\2\2\2O\3\2\2\2\2Q\3\2\2\2\2S\3\2\2\2\2U\3\2\2\2\2W\3\2\2\2\2Y"+
		"\3\2\2\2\2[\3\2\2\2\2]\3\2\2\2\2_\3\2\2\2\2a\3\2\2\2\2c\3\2\2\2\2o\3\2"+
		"\2\2\2q\3\2\2\2\2s\3\2\2\2\2u\3\2\2\2\2w\3\2\2\2\2y\3\2\2\2\2{\3\2\2\2"+
		"\3}\3\2\2\2\5\177\3\2\2\2\7\u0081\3\2\2\2\t\u0083\3\2\2\2\13\u0085\3\2"+
		"\2\2\r\u0087\3\2\2\2\17\u0089\3\2\2\2\21\u008b\3\2\2\2\23\u008e\3\2\2"+
		"\2\25\u0091\3\2\2\2\27\u0094\3\2\2\2\31\u0097\3\2\2\2\33\u009a\3\2\2\2"+
		"\35\u009d\3\2\2\2\37\u009f\3\2\2\2!\u00a3\3\2\2\2#\u00a8\3\2\2\2%\u00af"+
		"\3\2\2\2\'\u00b4\3\2\2\2)\u00b9\3\2\2\2+\u00bc\3\2\2\2-\u00c1\3\2\2\2"+
		"/\u00c5\3\2\2\2\61\u00cb\3\2\2\2\63\u00d1\3\2\2\2\65\u00da\3\2\2\2\67"+
		"\u00e1\3\2\2\29\u00e5\3\2\2\2;\u00eb\3\2\2\2=\u00f0\3\2\2\2?\u00f4\3\2"+
		"\2\2A\u00f6\3\2\2\2C\u00f8\3\2\2\2E\u00fa\3\2\2\2G\u00fd\3\2\2\2I\u00ff"+
		"\3\2\2\2K\u0102\3\2\2\2M\u0105\3\2\2\2O\u0107\3\2\2\2Q\u0109\3\2\2\2S"+
		"\u010b\3\2\2\2U\u010d\3\2\2\2W\u010f\3\2\2\2Y\u0111\3\2\2\2[\u0114\3\2"+
		"\2\2]\u0117\3\2\2\2_\u0119\3\2\2\2a\u011b\3\2\2\2c\u011d\3\2\2\2e\u011f"+
		"\3\2\2\2g\u0124\3\2\2\2i\u012a\3\2\2\2k\u012c\3\2\2\2m\u012e\3\2\2\2o"+
		"\u0132\3\2\2\2q\u013c\3\2\2\2s\u013e\3\2\2\2u\u0149\3\2\2\2w\u0150\3\2"+
		"\2\2y\u015e\3\2\2\2{\u0162\3\2\2\2}~\7-\2\2~\4\3\2\2\2\177\u0080\7/\2"+
		"\2\u0080\6\3\2\2\2\u0081\u0082\7,\2\2\u0082\b\3\2\2\2\u0083\u0084\7\61"+
		"\2\2\u0084\n\3\2\2\2\u0085\u0086\7\'\2\2\u0086\f\3\2\2\2\u0087\u0088\7"+
		">\2\2\u0088\16\3\2\2\2\u0089\u008a\7@\2\2\u008a\20\3\2\2\2\u008b\u008c"+
		"\7?\2\2\u008c\u008d\7?\2\2\u008d\22\3\2\2\2\u008e\u008f\7>\2\2\u008f\u0090"+
		"\7?\2\2\u0090\24\3\2\2\2\u0091\u0092\7@\2\2\u0092\u0093\7?\2\2\u0093\26"+
		"\3\2\2\2\u0094\u0095\7#\2\2\u0095\u0096\7?\2\2\u0096\30\3\2\2\2\u0097"+
		"\u0098\7(\2\2\u0098\u0099\7(\2\2\u0099\32\3\2\2\2\u009a\u009b\7~\2\2\u009b"+
		"\u009c\7~\2\2\u009c\34\3\2\2\2\u009d\u009e\7#\2\2\u009e\36\3\2\2\2\u009f"+
		"\u00a0\7k\2\2\u00a0\u00a1\7p\2\2\u00a1\u00a2\7v\2\2\u00a2 \3\2\2\2\u00a3"+
		"\u00a4\7d\2\2\u00a4\u00a5\7q\2\2\u00a5\u00a6\7q\2\2\u00a6\u00a7\7n\2\2"+
		"\u00a7\"\3\2\2\2\u00a8\u00a9\7u\2\2\u00a9\u00aa\7v\2\2\u00aa\u00ab\7t"+
		"\2\2\u00ab\u00ac\7k\2\2\u00ac\u00ad\7p\2\2\u00ad\u00ae\7i\2\2\u00ae$\3"+
		"\2\2\2\u00af\u00b0\7p\2\2\u00b0\u00b1\7w\2\2\u00b1\u00b2\7n\2\2\u00b2"+
		"\u00b3\7n\2\2\u00b3&\3\2\2\2\u00b4\u00b5\7x\2\2\u00b5\u00b6\7q\2\2\u00b6"+
		"\u00b7\7k\2\2\u00b7\u00b8\7f\2\2\u00b8(\3\2\2\2\u00b9\u00ba\7k\2\2\u00ba"+
		"\u00bb\7h\2\2\u00bb*\3\2\2\2\u00bc\u00bd\7g\2\2\u00bd\u00be\7n\2\2\u00be"+
		"\u00bf\7u\2\2\u00bf\u00c0\7g\2\2\u00c0,\3\2\2\2\u00c1\u00c2\7h\2\2\u00c2"+
		"\u00c3\7q\2\2\u00c3\u00c4\7t\2\2\u00c4.\3\2\2\2\u00c5\u00c6\7y\2\2\u00c6"+
		"\u00c7\7j\2\2\u00c7\u00c8\7k\2\2\u00c8\u00c9\7n\2\2\u00c9\u00ca\7g\2\2"+
		"\u00ca\60\3\2\2\2\u00cb\u00cc\7d\2\2\u00cc\u00cd\7t\2\2\u00cd\u00ce\7"+
		"g\2\2\u00ce\u00cf\7c\2\2\u00cf\u00d0\7m\2\2\u00d0\62\3\2\2\2\u00d1\u00d2"+
		"\7e\2\2\u00d2\u00d3\7q\2\2\u00d3\u00d4\7p\2\2\u00d4\u00d5\7v\2\2\u00d5"+
		"\u00d6\7k\2\2\u00d6\u00d7\7p\2\2\u00d7\u00d8\7w\2\2\u00d8\u00d9\7g\2\2"+
		"\u00d9\64\3\2\2\2\u00da\u00db\7t\2\2\u00db\u00dc\7g\2\2\u00dc\u00dd\7"+
		"v\2\2\u00dd\u00de\7w\2\2\u00de\u00df\7t\2\2\u00df\u00e0\7p\2\2\u00e0\66"+
		"\3\2\2\2\u00e1\u00e2\7p\2\2\u00e2\u00e3\7g\2\2\u00e3\u00e4\7y\2\2\u00e4"+
		"8\3\2\2\2\u00e5\u00e6\7e\2\2\u00e6\u00e7\7n\2\2\u00e7\u00e8\7c\2\2\u00e8"+
		"\u00e9\7u\2\2\u00e9\u00ea\7u\2\2\u00ea:\3\2\2\2\u00eb\u00ec\7v\2\2\u00ec"+
		"\u00ed\7j\2\2\u00ed\u00ee\7k\2\2\u00ee\u00ef\7u\2\2\u00ef<\3\2\2\2\u00f0"+
		"\u00f1\7]\2\2\u00f1\u00f2\7(\2\2\u00f2\u00f3\7_\2\2\u00f3>\3\2\2\2\u00f4"+
		"\u00f5\7\60\2\2\u00f5@\3\2\2\2\u00f6\u00f7\7.\2\2\u00f7B\3\2\2\2\u00f8"+
		"\u00f9\7=\2\2\u00f9D\3\2\2\2\u00fa\u00fb\7/\2\2\u00fb\u00fc\7@\2\2\u00fc"+
		"F\3\2\2\2\u00fd\u00fe\7?\2\2\u00feH\3\2\2\2\u00ff\u0100\7-\2\2\u0100\u0101"+
		"\7-\2\2\u0101J\3\2\2\2\u0102\u0103\7/\2\2\u0103\u0104\7/\2\2\u0104L\3"+
		"\2\2\2\u0105\u0106\7*\2\2\u0106N\3\2\2\2\u0107\u0108\7+\2\2\u0108P\3\2"+
		"\2\2\u0109\u010a\7]\2\2\u010aR\3\2\2\2\u010b\u010c\7_\2\2\u010cT\3\2\2"+
		"\2\u010d\u010e\7}\2\2\u010eV\3\2\2\2\u010f\u0110\7\177\2\2\u0110X\3\2"+
		"\2\2\u0111\u0112\7>\2\2\u0112\u0113\7>\2\2\u0113Z\3\2\2\2\u0114\u0115"+
		"\7@\2\2\u0115\u0116\7@\2\2\u0116\\\3\2\2\2\u0117\u0118\7~\2\2\u0118^\3"+
		"\2\2\2\u0119\u011a\7`\2\2\u011a`\3\2\2\2\u011b\u011c\7(\2\2\u011cb\3\2"+
		"\2\2\u011d\u011e\7\u0080\2\2\u011ed\3\2\2\2\u011f\u0120\7v\2\2\u0120\u0121"+
		"\7t\2\2\u0121\u0122\7w\2\2\u0122\u0123\7g\2\2\u0123f\3\2\2\2\u0124\u0125"+
		"\7h\2\2\u0125\u0126\7c\2\2\u0126\u0127\7n\2\2\u0127\u0128\7u\2\2\u0128"+
		"\u0129\7g\2\2\u0129h\3\2\2\2\u012a\u012b\t\2\2\2\u012bj\3\2\2\2\u012c"+
		"\u012d\t\3\2\2\u012dl\3\2\2\2\u012e\u012f\7\"\2\2\u012fn\3\2\2\2\u0130"+
		"\u0133\5e\63\2\u0131\u0133\5g\64\2\u0132\u0130\3\2\2\2\u0132\u0131\3\2"+
		"\2\2\u0133p\3\2\2\2\u0134\u0138\t\4\2\2\u0135\u0137\t\2\2\2\u0136\u0135"+
		"\3\2\2\2\u0137\u013a\3\2\2\2\u0138\u0136\3\2\2\2\u0138\u0139\3\2\2\2\u0139"+
		"\u013d\3\2\2\2\u013a\u0138\3\2\2\2\u013b\u013d\7\62\2\2\u013c\u0134\3"+
		"\2\2\2\u013c\u013b\3\2\2\2\u013dr\3\2\2\2\u013e\u0144\7$\2\2\u013f\u0143"+
		"\n\5\2\2\u0140\u0141\7^\2\2\u0141\u0143\t\6\2\2\u0142\u013f\3\2\2\2\u0142"+
		"\u0140\3\2\2\2\u0143\u0146\3\2\2\2\u0144\u0145\3\2\2\2\u0144\u0142\3\2"+
		"\2\2\u0145\u0147\3\2\2\2\u0146\u0144\3\2\2\2\u0147\u0148\7$\2\2\u0148"+
		"t\3\2\2\2\u0149\u014d\t\7\2\2\u014a\u014c\t\b\2\2\u014b\u014a\3\2\2\2"+
		"\u014c\u014f\3\2\2\2\u014d\u014b\3\2\2\2\u014d\u014e\3\2\2\2\u014ev\3"+
		"\2\2\2\u014f\u014d\3\2\2\2\u0150\u0151\7\61\2\2\u0151\u0152\7,\2\2\u0152"+
		"\u0156\3\2\2\2\u0153\u0155\13\2\2\2\u0154\u0153\3\2\2\2\u0155\u0158\3"+
		"\2\2\2\u0156\u0157\3\2\2\2\u0156\u0154\3\2\2\2\u0157\u0159\3\2\2\2\u0158"+
		"\u0156\3\2\2\2\u0159\u015a\7,\2\2\u015a\u015b\7\61\2\2\u015b\u015c\3\2"+
		"\2\2\u015c\u015d\b<\2\2\u015dx\3\2\2\2\u015e\u015f\t\t\2\2\u015f\u0160"+
		"\3\2\2\2\u0160\u0161\b=\2\2\u0161z\3\2\2\2\u0162\u0163\7\61\2\2\u0163"+
		"\u0164\7\61\2\2\u0164\u0168\3\2\2\2\u0165\u0167\n\n\2\2\u0166\u0165\3"+
		"\2\2\2\u0167\u016a\3\2\2\2\u0168\u0166\3\2\2\2\u0168\u0169\3\2\2\2\u0169"+
		"\u016b\3\2\2\2\u016a\u0168\3\2\2\2\u016b\u016c\b>\2\2\u016c|\3\2\2\2\13"+
		"\2\u0132\u0138\u013c\u0142\u0144\u014d\u0156\u0168\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}