
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
     INT = 260,
     CONSTANT = 261,
     CHAR = 262,
     FLOAT = 263,
     VOID = 264,
     WHILE = 265,
     IF = 266,
     RETURN = 267,
     FOR = 268,
     REPEAT = 269,
     UNTIL = 270,
     SWITCH = 271,
     CASE = 272,
     BREAK = 273,
     DEFAULT = 274,
     CONTINUE = 275,
     INC = 276,
     DEC = 277,
     DECIMAL = 278,
     IFX = 279,
     ELSE = 280,
     MINUS = 281,
     PLUS = 282,
     DIVIDE = 283,
     MULTIPLY = 284,
     NOT = 285,
     OR = 286,
     AND = 287,
     NE = 288,
     EQ = 289,
     LE = 290,
     GE = 291,
     UMINUS = 292
   };
#endif
/* Tokens.  */
#define DIGIT 258
#define IDENTIFIER 259
#define INT 260
#define CONSTANT 261
#define CHAR 262
#define FLOAT 263
#define VOID 264
#define WHILE 265
#define IF 266
#define RETURN 267
#define FOR 268
#define REPEAT 269
#define UNTIL 270
#define SWITCH 271
#define CASE 272
#define BREAK 273
#define DEFAULT 274
#define CONTINUE 275
#define INC 276
#define DEC 277
#define DECIMAL 278
#define IFX 279
#define ELSE 280
#define MINUS 281
#define PLUS 282
#define DIVIDE 283
#define MULTIPLY 284
#define NOT 285
#define OR 286
#define AND 287
#define NE 288
#define EQ 289
#define LE 290
#define GE 291
#define UMINUS 292




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 12 "parser.y"

    int val;   
    char ind;      
             



/* Line 1676 of yacc.c  */
#line 134 "y.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


