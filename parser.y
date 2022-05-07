%{
#include<stdio.h>

void yyerror(char *);
int yylex(void);

int symbols[52];
%}

%union {
    int val;   
    char ind;      
             
};

%token <val>DIGIT <ind>IDENTIFIER FLOAT CHAR PLUS MINUS MULTIPLY DIVIDE OPENBRACKET CLOSEDBRACKET 

%token WHILE IF RETURN FOR REPEAT UNTIL SWITCH CASE BREAK DEFAULT CONTINUE INC DEC 

%token INT BOOLEAN CONSTANT VOID

%left PLUS MINUS

%left MULTIPLY DIVIDE

%nonassoc IFX
%nonassoc ELSE

%left GE LE EQ NE '>' '<' AND OR NOT
%left '+' '-'
%left '*' '/'


%nonassoc UMINUS



%%

program:
        program stmt
        | program function
        | 
        ;


stmt:
        ';'             { printf("semi \n");}
        | expr ';'      { printf("expr semi \n");}
        | declare       { printf("declare \n");}
         | const         { printf("const \n");}
        | if            { printf("if \n");}
        | while         { printf("while \n");}
        | BREAK ';'     { printf("BREAK \n");}        
        | CONTINUE ';'  { printf("CONTINUE \n");}
        | repeatuntil   { printf("repeatuntil \n");}
        | switch        { printf("switch \n");}
        |FunctionStmt  
        | IDENTIFIER '=' expr ';'  { printf("IDENTIFIER '=' expr; \n");}
        |'{' stmt_list '}'     { printf("DONE \n");}
        ;


stmt_list:
          stmt
        | stmt_list stmt
        ;

identifier:
        INT                     { printf("This is int \n");}
        | BOOLEAN               { printf("This is bool \n");}
        | CHAR             { printf("This is char \n");}
        | FLOAT                 { printf("This is float \n");}
        | VOID                  { printf("This is void \n");}
        ;

declare:
        identifier IDENTIFIER ';'         { printf("IDENTIFIER declaration \n");}        
        | identifier IDENTIFIER '=' expr ';' { printf("IDENTIFIER declaration with initial value \n");}
        ;

const:
        CONSTANT declare                { printf("this is a constant \n"); }
        ;

expr:
          DIGIT                        { printf("digit "); }
        | FLOAT                             { printf("FLOATDIGIT "); }
        | CHAR                              { printf("CHARACTER "); }
        | IDENTIFIER                                    { printf("var "); }
        | '-' expr %prec UMINUS 
        | expr   '+'   expr         { printf("expr + expr \n"); }
        | expr   '-'   expr         { printf("expr - expr \n"); }
        | expr   '*'   expr         { printf("expr * expr \n"); }
        | expr   '/'   expr         { printf("expr / expr \n"); }
        | incrementation ';'        { printf("incrementation\n"); }
        | '('   expr   ')'          { printf("(expr)\n"); }
        ;

comparisons:
          expr GE expr          { printf("expr GE expr \n"); }
        | expr LE expr          { printf("expr LE expr \n"); }
        | expr NE expr          { printf("expr NE expr \n"); }
        | expr EQ expr          { printf("expr EQ expr \n"); }
        | expr '<' expr         { printf("expr < expr \n"); }
        | expr '>' expr         { printf("expr > expr \n"); }
        | NOT expr              { printf("NOT expr \n"); }
        ;

condition:
        comparisons               { printf("compp \n"); }
        | IDENTIFIER                { printf("testing \n"); }
        | condition AND condition { printf("andddd \n"); }
        | condition OR condition  { printf("orrrr \n"); }
        ;

if:
        IF '(' condition ')' stmt %prec IFX         { printf("if condition \n"); }
        | IF '(' condition ')' stmt ELSE stmt       { printf("else condition \n"); }
        ;

while:
        WHILE '(' condition ')' stmt   
        ;

incrementation:
        IDENTIFIER INC             { printf("var++ \n"); }
        | IDENTIFIER DEC                  { printf("var-- \n"); }
        ;

preincrementation:
             IDENTIFIER "=" expr  { printf("IDENTIFIER = expr \n"); }
            | INC IDENTIFIER       { printf("++var \n"); }
            | DEC IDENTIFIER      { printf("--var \n"); }
            ;

forincrementation:
              incrementation
              |preincrementation
              ;

for:
        FOR '(' declare condition ';' forincrementation ')' stmt  
        ;

repeatuntil:
        REPEAT stmt UNTIL '(' condition ')'     
        ;

case:
        CASE DIGIT':' stmt BREAK ';' case
        |
        ;


switch:
        SWITCH '(' IDENTIFIER ')' case
        ;

argument:
        identifier IDENTIFIER arguments { printf("argument\n"); }
        |
        ;


arguments:  
        ',' identifier IDENTIFIER arguments { printf("arguments\n"); }
	|
	;


FunctionStmt:
                 
                 RETURN IDENTIFIER ';'
                | RETURN DIGIT ';'
                | RETURN ';'
                ;



function:
        identifier IDENTIFIER '(' argument ')'  stmt    { printf("Function\n"); }
        ;



%%

void yyerror(char *s) {
    fprintf(stderr, "%s\n", s);
}

int main(void) {
    yyparse();
}



