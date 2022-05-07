
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     DIGIT = 258,
     IDENTIFIER = 259,
     FLOAT = 260,
     CHAR = 261,
     PLUS = 262,
     MINUS = 263,
     MULTIPLY = 264,
     DIVIDE = 265,
     OPENBRACKET = 266,
     CLOSEDBRACKET = 267,
     WHILE = 268,
     IF = 269,
     RETURN = 270,
     FOR = 271,
     REPEAT = 272,
     UNTIL = 273,
     SWITCH = 274,
     CASE = 275,
     BREAK = 276,
     DEFAULT = 277,
     CONTINUE = 278,
     INC = 279,
     DEC = 280,
     INT = 281,
     BOOLEAN = 282,
     CONSTANT = 283,
     VOID = 284,
     IFX = 285,
     ELSE = 286,
     NOT = 287,
     OR = 288,
     AND = 289,
     NE = 290,
     EQ = 291,
     LE = 292,
     GE = 293,
     UMINUS = 294
   };
#endif
/* Tokens.  */
#define DIGIT 258
#define IDENTIFIER 259
#define FLOAT 260
#define CHAR 261
#define PLUS 262
#define MINUS 263
#define MULTIPLY 264
#define DIVIDE 265
#define OPENBRACKET 266
#define CLOSEDBRACKET 267
#define WHILE 268
#define IF 269
#define RETURN 270
#define FOR 271
#define REPEAT 272
#define UNTIL 273
#define SWITCH 274
#define CASE 275
#define BREAK 276
#define DEFAULT 277
#define CONTINUE 278
#define INC 279
#define DEC 280
#define INT 281
#define BOOLEAN 282
#define CONSTANT 283
#define VOID 284
#define IFX 285
#define ELSE 286
#define NOT 287
#define OR 288
#define AND 289
#define NE 290
#define EQ 291
#define LE 292
#define GE 293
#define UMINUS 294




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 10 "parser.y"

    int val;   
    char ind;      
             



/* Line 1676 of yacc.c  */
#line 138 "y.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


