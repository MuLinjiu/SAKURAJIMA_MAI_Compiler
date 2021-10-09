grammar Mxstar;

program : define* EOF;
//program : define* ;

//main_suite : INT MAIN suite;

define : class_define | function_define | var_define_youfen;

class_define : CLASS Identifier '{' (constructor_define)? (var_define_youfen | function_define)* '}' ';';

constructor_define : Identifier '(' parameter ')' suite;

suite : '{' (suite | statement)* '}';

parameter_list : '(' (parameter (',' parameter)*)? ')';

parameter : type Identifier;

function_define : func_type Identifier parameter_list suite;

var_define_youfen : var_define_wufen ';';

var_define_wufen : type var_define_sentence (',' var_define_sentence)*;

var_define_sentence : Identifier ('=' expression)?;

type : Identifier | basic_type | type '[' ']';

basic_type : INT | BOOL | STRING;

func_type : type | VOID;

statement : var_define_youfen | expression_stmt | if_stmt | while_stmt | for_stmt | control_stmt;

expression_stmt : expression? ';';

if_stmt : IF '(' expression ')' (suite | statement | ';') (ELSE (suite | statement | ';'))?;

while_stmt : WHILE '('expression ')' (suite | statement | ';');

for_stmt : FOR '(' (var_define_sentence)? ';' (expression)? ';' (expression)? ')' (suite | statement | ';');

control_stmt : (RETURN expression | CONITNUE | BREAK) ';';

newor : Identifier | basic_type | ('[' expression ']')+ ('[' ']')*;

lambada : LAMBDA_START parameter_list? ARROW suite sentence_list;

sentence_list : '(' (expression (',' expression)*)? ')';

expression
    : expression '[' expression ']'
    | expression sentence_list //函数调用
    | expression '.' expression
    | <assoc=right> (ADD | MINUS) expression
    | <assoc=right> (SELF_MINUS | SELF_PLUS) expression
    | <assoc=right> expression (SELF_PLUS | SELF_MINUS)
    | <assoc=right> (NOT | FAN) expression
    | <assoc=right> NEW newor
    | expression STAR expression
    | expression DIVIDE expression
    | expression MOD expression
    | expression ADD expression
    | expression MINUS expression
    | expression (LEFT_SHIFT | RIGHT_SHIFT) expression
    | expression (GREATER | LESS | GREATER_E | LESS_E) expression
    | expression (EQUAL | NOT_EQUAL) expression
    | expression (AND | XOR | OR) expression
    | expression (AND_AND | OR_OR) expression
    | <assoc=right> expression ASSIGN expression
    | Identifier
    | THIS
    | NULL
    | INT_CHOICE
    | BOOL_CHOICE
    | STRING_CHOICE
    | lambada
    | sentence_list
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

STRING_CHOICE : '"' (([ -~] | ([\\][\\]) | [\\n] | ([\\]["])) | LETTER)* '"';

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






