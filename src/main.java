import AST.RootNode;
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
import java.io.InputStream;

public class main {
    public static void main(String[] args) throws Exception{
        String name = "test.mx";
        //InputStream raw = System.in;
        InputStream raw = new FileInputStream(name);
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
        } catch(error er) {
            System.err.println(er.toString());
            throw new RuntimeException();
        }
    }
}
