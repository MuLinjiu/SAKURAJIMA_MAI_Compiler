import AST.RootNode;
import Asembly.AsmModule;
import Backend.*;
import Frontend.ASTbuilder;
import Frontend.SementicChecker;
import Frontend.SymbolCollector;
import Parser.MxstarListener;
import Parser.MxstarParser;
import Parser.MxstarLexer;
import Util.*;
import Util.error.*;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.PrintStream;

import MIR.*;

public class main {
    private static String Semantic = "-fsyntax-only";
    private static String Output = "-o";
    public static void main(String[] args) throws Exception{
        boolean SemanticSwitch = false ;
        PrintStream out = System.out ;
        for (int i = 0; i < args.length; i ++) {
            if (args[i].charAt(0) == '-') {
                if (args[i].equals(Semantic))
                    SemanticSwitch = true ;
                else if (args[i].equals(Output))
                    out = new PrintStream(new FileOutputStream(args[i+1]));
            }
        }
        //String name = "test.mx";
        InputStream raw = System.in;
        //InputStream raw = new FileInputStream(name);
        PrintStream out1 = new PrintStream("debug.ll");
        PrintStream out2 = new PrintStream("debug.s");
        try{
            CharStream input = CharStreams.fromStream(raw);
            MxstarLexer lexer = new MxstarLexer(input);
            lexer.removeErrorListeners();
            lexer.addErrorListener(new MxErrorListener());
            CommonTokenStream tokens = new CommonTokenStream(lexer);
            MxstarParser parser = new MxstarParser(tokens);
            parser.removeErrorListeners();
            parser.addErrorListener(new MxErrorListener());

            ParseTree parseTreeRoot = parser.program();
            ASTbuilder astBuilder = new ASTbuilder();
            RootNode ASTRoot = (RootNode) astBuilder.visit(parseTreeRoot);

            globalScope gScope = new globalScope();
            new SymbolCollector(gScope).visit(ASTRoot);
            new SementicChecker(gScope).visit(ASTRoot);
            if(!SemanticSwitch) {

                mainFn f = new mainFn();
                Global_def global_def = new Global_def();
                new IRBuilder(global_def, gScope).visit(ASTRoot);
               // new IRPrinter().visitGlobal_var_def_stmt(global_def);
                AsmModule top_module = new AsmModule();
                new InstSelector(global_def, top_module);
                new AsmPrinter(out, top_module);
            }
        } catch(error er) {
            System.err.println(er.toString());
            throw new RuntimeException();
        }
    }
}
