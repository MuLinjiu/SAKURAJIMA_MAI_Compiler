grammar Mxstar;

program : define* EOF;
//program : define* ;

//main_suite : INT MAIN suite;

define : class_define | function_define | global_var_def_stmt;

global_var_def_stmt : var_define_wufen ';';

class_define : CLASS Identifier '{' (constructor_define)? (var_define_youfen | function_define)* '}' ';';

constructor_define : Identifier '(' ')' suite;

suite : '{' block* '}';//block = suite_stmt

block : statement | suite | ';';

parameter_list : '(' (parameter (',' parameter)*)? ')';

parameter : type Identifier;

function_define : func_type Identifier parameter_list suite;

var_define_youfen : var_define_wufen ';';

var_define_wufen : type var_define_sentence (',' var_define_sentence)*;

var_define_sentence : Identifier ('=' expression)?;

type : (Identifier | basic_type) ('[' ']')*;

basic_type : INT | BOOL | STRING;

func_type : type | VOID;

statement : var_define_youfen | expression_stmt | if_stmt | while_stmt | for_stmt | return_stmt | continue_stmt | break_stmt;

expression_stmt : expression ';';

if_stmt : IF '(' expression ')' suite_statement else_stmt?;

else_stmt : (ELSE suite_statement);

suite_statement : (suite | statement | ';');

while_stmt : WHILE '('expression ')' suite_statement;

for_stmt : FOR '(' (for_start)? ';' (for_finish)? ';' (expression)? ')' suite_statement;

for_start : expression | var_define_wufen;

for_finish : expression;

//control_stmt : ((RETURN expression?) | CONITNUE | BREAK) ';';

return_stmt : RETURN expression? ';';

continue_stmt : CONITNUE;

break_stmt : BREAK;

newor : (Identifier | basic_type) ('(' ')' | creator_size*);

creator_size : '[' expression? ']';


lambada : LAMBDA_START parameter_list? ARROW suite sentence_list;

sentence_list : '(' (expression (',' expression)*)? ')';

expression
    : expression '.' expression                          #binaryexpr
    | expression sentence_list                           #hanshudiaoyong
    | expression (SELF_PLUS | SELF_MINUS)                #prePLUSMINUS
    | expression '[' expression ']'                      #arrayexpr
    | <assoc=right> (ADD | MINUS) expression             #unaryexpr
    | <assoc=right>(SELF_PLUS | SELF_MINUS) expression   #backPLUSMINUS
    | <assoc=right> (NOT | FAN) expression               #unaryexpr
    | <assoc=right> NEW newor                            #newexpr
    | expression STAR expression                         #binaryexpr
    | expression DIVIDE expression                       #binaryexpr
    | expression MOD expression                          #binaryexpr
    | expression ADD expression                          #binaryexpr
    | expression MINUS expression                        #binaryexpr
    | expression (LEFT_SHIFT | RIGHT_SHIFT) expression   #binaryexpr
    | expression (GREATER | LESS | GREATER_E | LESS_E) expression #binaryexpr
    | expression (EQUAL | NOT_EQUAL) expression          #binaryexpr
    | expression (AND | XOR | OR) expression             #binaryexpr
    | expression (AND_AND | OR_OR) expression            #binaryexpr
    | <assoc=right> expression ASSIGN expression         #binaryexpr
    | Identifier                                         #basicexpr
    | THIS                                               #basicexpr
    | NULL                                               #basicexpr
    | INT_CHOICE                                         #basicexpr
    | BOOL_CHOICE                                        #basicexpr
    | STRING_CHOICE                                      #basicexpr
    | lambada                                            #lambadaexpr
    | '(' expression ')'                                 #bracketxpr
    ;


ADD : '+';
MINUS : '-';
STAR : '*';
DIVIDE : '/';
MOD : '%';

LESS : '<';
GREATER : '>';
EQUAL : '==';
LESS_E : '<=';
GREATER_E : '>=';
NOT_EQUAL : '!=';

AND_AND : '&&';
OR_OR : '||';
NOT : '!';

INT : 'int';
BOOL : 'bool';
STRING : 'string';
NULL : 'null';
VOID : 'void';
IF : 'if';
ELSE : 'else';
FOR : 'for';
WHILE : 'while';
BREAK : 'break';
CONITNUE : 'continue';
RETURN : 'return';
NEW : 'new';
CLASS : 'class';
THIS : 'this';
//MAIN : 'main' '(' ')';
LAMBDA_START : '[&]';


DOT : '.';
COMMA : ',';
SEMI : ';';
ARROW : '->';

ASSIGN : '=';
SELF_PLUS : '++';
SELF_MINUS : '--';

LEFT_PAREN : '(';
RIGHT_PAREN : ')';
LEFT_BRACK : '[';
RIGHT_BRACK : ']';
LEFT_BRACE : '{';
RIGHT_BRACE : '}';

LEFT_SHIFT : '<<';
RIGHT_SHIFT : '>>';
OR : '|';
XOR : '^';
AND : '&';
FAN : '~';

fragment TRUE : 'true';
fragment FALSE : 'false';
fragment DIGIT : [0-9];
fragment LETTER : [a-zA-Z_];
fragment SPACE : ' ';

BOOL_CHOICE : TRUE | FALSE;

INT_CHOICE : [1-9][0-9]* | '0' ;

//STRING_CHOICE : '"' (([ -~] | ([\\][\\]) | [\\n] | ([\\]["])) | LETTER)* '"';

STRING_CHOICE : '"' (~["\n\r\\] | '\\' ["nr\\])*? '"';

Identifier: [a-zA-Z][a-zA-Z0-9_]*;

BlockComment
    : '/*' .*? '*/'
      -> skip
    ;
BlankChar
    : [ \r\n\t]
      -> skip
    ;
LineComment
    : '//' ~[\r\n]*
      -> skip
    ;






