%{
#include<stdio.h>
#include<string>
#include<stdarg>
#include<stdlib>
#include"y.tab.h"
%}



%%


"("             return OPENBRACKET;
")"             return CLOSEDBRACKET;
"*"             return MULTIPLY;
"/"             return DIVIDE;
"+"             return PLUS;
"-"             return MINUS;
"while"         return WHILE;
"if"            return IF;
"else"          return ELSE;
"for"           return FOR;
"repeat"        return REPEAT;
"until"         return UNTIL;
"switch"        return SWITCH;
"case"          return CASE;
"break"         return BREAK;
"default"       return DEFAULT;
"continue"      return CONTINUE;
"return"        return RETURN;
"const"         return CONSTANT;
"int"           return INT;
"bool"          return BOOLEAN;
"char"          return CHARACTER;
"float"         return FLOAT;
"double"        return DOUBLE;
"string"        return STRING;
"void"          return VOID;
">="            return GE;
"<="            return LE;
"=="            return EQ;
"!="            return NE;
"&&"            return AND;
"||"            return OR;
"++"            return INC;
"--"            return DEC;
"!"             return NOT;


:  {printf("COLON");}

;  {printf("SEMICOLON");}

[a-zA-Z][_a-zA-Z0-9]*	{return IDENTIFIER;}//{printf("IDENTIFIER");}
[1-9][0-9]*				{yylval=atoi(yytext) return DIGIT;}//{printf("INTEGER");}

[1-9][0-9]*\.[0-9]+   {yylval=atof(yytext) return FLOAT;}//{printf("FLOAT");}
'[a-zA-Z]'              {yylval=yytext return CHAR;}//{printf("Char");}



[ \t\n]					;
.					printf("unexpected character\n");


%%
int main(void)
{
    yylex();
    return 0;
}
int yywrap(void)
{
	return 1;
}