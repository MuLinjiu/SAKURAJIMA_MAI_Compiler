package AST;

public interface ASTvisitor {
    void visit(RootNode it);
    void visit(ArrayExprNode it);
    void visit(BackPLUSMINUSExpr it);
    void visit(BasicExprNode it);
    void visit(BasicTypeNode it);
    void visit(BinaryExprNode it);
    void visit(BlockNode it);
    void visit(BracketExprNode it);
    void visit(BreakNode it);
    void visit(ClassDefNode it);
    void visit(ConstruDefNode it);
    void visit(ContinueNode it);
    void visit(ElseStmtNode it);
    void visit(ForfinishNode it);
    void visit(ForstartNode it);
    void visit(ForStmtNode it);
    void visit(FucDefNode it);
    void visit(FucTypeNode it);
    void visit(Global_var_define_youfen it);
    void visit(HanshuDiaoyongExprNode it);
    void visit(IfStmtNode it);
    void visit(LambadaExprNode it);
    void visit(NewerNode it);
    void visit(ParameterNode it);
    void visit(ParameterListNode it);
    void visit(PrePLUSMINUSExpr it);
    void visit(ReturnNode it);
    void visit(Sentence_ListNode it);
    void visit(Suite_StmtNode it);
    void visit(SuiteNode it);
    void visit(TypeNode it);
    void visit(UnaryExprNode it);
    void visit(VarDefNode it);
    void visit(VarDefSentenceNode it);
    void visit(WhileStmtNode it);

    void visit(NewersizeNode newersizeNode);
}
