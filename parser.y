%{
#include<stdio.h>
#include<string>
#include<stdarg>
#include<stdlib>

void yyerror(char *);
int yylex(void);

int symbols[52];
%}

%token IDENTIFIER DIGIT FLOAT CHAR PLUS MINUS MULTIPLY DIVIDE OPENBRACKET CLOSEDBRACKET 

%token WHILE IF RETURN FOR REPEAT UNTIL SWITCH CASE BREAK DEFAULT CONTINUE INC DEC CONSTANT VOID

%left PLUS MINUS

%left MULTIPLY DIVIDE



%%
identifier:
        INT                     { printf("This is int \n");}
        | BOOLEAN               { printf("This is bool \n");}
        | CHARACTER             { printf("This is char \n");}
        | FLOAT                 { printf("This is float \n");}
        | DOUBLE                { printf("This is double \n");}
        | STRING                { printf("This is string \n");}
        | VOID                  { printf("This is void \n");}
        ;

declare:
        identifier VARIABLE ';'         { printf("variable declaration \n");}        
        | identifier VARIABLE '=' expr ';' { printf("variable declaration with initial value \n");}
        ;

const:
        CONSTANT declare                { printf("this is a constant \n"); }
        ;

%%



