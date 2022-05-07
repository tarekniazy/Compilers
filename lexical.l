%{
#include<stdio.h>

#include"y.tab.h"
void yyerror (char *s);

%}



%%



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
"char"          return CHAR;
"float"         return FLOAT;
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


[1-9][0-9]*				{ 
	                		yylval.val = atoi(yytext);

							return DIGIT;
							}

[1-9][0-9]*\.[0-9]+   {	    
							yylval.val = atof(yytext);

							return FLOAT;
							}


'[a-zA-Z]'              {
							
							yylval.val = yytext;

							return CHAR;
							}

[-()<>=*/;{}+.:,] {
                    return *yytext;
                }


[ \t\n]*					;

[a-zA-Z][_a-zA-Z0-9]*	{   yylval.ind = *yytext-'a';
							return IDENTIFIER;
							}


.					printf("unexpected character\n");


%%
// int main(void)
// {
//     yylex();
//     return 0;
// }
int yywrap(void)
{
	return 1;
}