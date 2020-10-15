%{

#include<stdio.h>
#include<stdlib.h>
int Upper=0;
int Lower=0;
%}


digit         [0-9]
identifier    [_a-zA-Z][_a-zA-Z0-9]*
binary	[Z0-1]
octal	[X0-7]
hexad	[0-9A-F]
letter	[a-zA-Z]

%%

"+"                  { printf("Operador de adicao: [%s]\t" , yytext)	    ;};
"-"                  { printf("Operador de subtracao: [%s]\t", yytext)	    ;};
"*"                  { printf("Operador de multiplicacao: [%s]\t", yytext)	    ;};
"/"                  { printf("Operador de divisao: [%s]\t", yytext)	    ;};
"%"                  { printf("Operador de modulo: [%s]\t", yytext)	    ;};
"!"                  { printf("Operador not: [%s]\t", yytext)	    ;};
"&&"                 { printf("Operador and: [%s]\t", yytext)	    ;};
"||"                 { printf("Operador or: [%s]\t", yytext)	    ;};
"!="                 { printf("Operador notequal: [%s]\t", yytext)	    ;};
"=="                 { printf("Operador equal: [%s]\t", yytext)	    ;};
"="                  { printf("Operador assign: [%s]\t", yytext)	    ;};
"<"                  { printf("Operador less: [%s]\t", yytext)	    ;};
">"                  { printf("Operador greater: [%s]\t", yytext)	    ;};
"<="                 { printf("Operador lessequal: [%s]\t", yytext)    ;};
">="                 { printf("Operador greaterequal: [%s]\t", yytext) ;};

"#"                  { printf("NumberSign: [%s]\t", yytext)	  ;};
"&"                  { printf("Endereco de memoria: [%s]\t", yytext)  ;};
"("                  { printf("Parentese esquerdo: [%s]\t", yytext)	  ;};
")"                  { printf("Parentese direito: [%s]\t", yytext)	  ;};
"{"                  { printf("Chave esquerda: [%s]\t", yytext)	  ;};
"}"                  { printf("Chave direita: [%s]\t", yytext)	  ;};
"["                  { printf("Cochete esquerdo: [%s]\t", yytext)	  ;};
"]"                  { printf("Cochete direito: [%s]\t", yytext)  ;};
";"                  { printf("Ponto e virdula: [%s]\t", yytext)	  ;};
","                  { printf("Virgula: [%s]\t", yytext)	  ;};
"."                  { printf("Ponto: [%s]\t", yytext)		  ;};
"'"                  { printf("Aspas simples: [%s]\t", yytext)	  ;};
":"                  { printf("Dois pontos: [%s]\t", yytext)	  ;};

"auto"               { printf("Keyword auto: [%s]\t", yytext)  ;};
"break"              { printf("Keyword break: [%s]\t", yytext)  ;};
"case"               { printf("Keyword case: [%s]\t", yytext)  ;};
"char"               { printf("Keyword char: [%s]\t", yytext)  ;};
"const"              { printf("Keyword const: [%s]\t", yytext)  ;};
"continue"           { printf("Keyword continue: [%s]\t", yytext)  ;};
"default"            { printf("Keyword default: [%s]\t", yytext)  ;};
"do"                 { printf("Keyword do: [%s]\t", yytext)  ;};
"double"             { printf("Keyword double: [%s]\t", yytext)  ;};
"else"               { printf("Keyword else: [%s]\t", yytext)     ;};
"enum"               { printf("Keyword enum: [%s]\t", yytext)  ;};
"extern"             { printf("Keyword extern: [%s]\t", yytext)  ;};
"float"              { printf("Keyword float: [%s]\t", yytext)  ;};
"for"                { printf("Keyword for: [%s]\t", yytext)  ;};
"goto"               { printf("Keyword goto: [%s]\t", yytext)  ;};
"if"                 { printf("Keyword if: [%s]\t", yytext)       ;};
"int"                { printf("Keyword int: [%s]\t", yytext)  ;};
"long"               { printf("Keyword long: [%s]\t", yytext)  ;};
"register"           { printf("Keyword register: [%s]\t", yytext)  ;};
"return"             { printf("Keyword return: [%s]\t", yytext)  ;};
"short"              { printf("Keyword short: [%s]\t", yytext)  ;};
"signed"             { printf("Keyword signed: [%s]\t", yytext)  ;};
"sizeof"             { printf("Keyword sizeof: [%s]\t", yytext)  ;};
"static"             { printf("Keyword static: [%s]\t", yytext)  ;};
"struct"             { printf("Keyword struct: [%s]\t", yytext)  ;};
"switch"             { printf("Keyword switch: [%s]\t", yytext)  ;};
"typedef"            { printf("Keyword typedef: [%s]\t", yytext)  ;};
"union"              { printf("Keyword union: [%s]\t", yytext)  ;};
"unsigned"           { printf("Keyword unsigned: [%s]\t", yytext)  ;};
"void"               { printf("Keyword void: [%s]\t", yytext)  ;};
"volatile"           { printf("Keyword volatile: [%s]\t", yytext)  ;};
"while"              { printf("Keyword while: [%s]\t", yytext)  ;};
"print"              { printf("Keyword print: [%s]\t", yytext)    ;};
"putc"               { printf("Keyword putc: [%s]\t", yytext)     ;};
"include"            { printf("Keyword include: [%s]\t", yytext)  ;};
"Function"+           { printf("Comeco de uma Funcao: [%s]\t", yytext)  ;};

{letter}+		    { printf("Letra(s)/Palavra: [%s]>\t", yytext) ;};
{digit}+	            { printf("Integer: [%s]\t", yytext)    ;};
{digit}+"."{digit}* 	{ printf("Real: [%s]\t", yytext) ;};
{hexad}+		    { printf("Hexadecimal: [%s]\t", yytext) ;};
{octal}*		    { printf("Octal: [%s]\t", yytext) ;};
{binary}*		    { printf("Binario: [%s]\t", yytext) ;};
{identifier}		{ printf("Identificador: [%s]\t", yytext) ;};

{letter}+"["{digit}"]"		{ printf("Vetor: [%s]\t", yytext) ;};
{letter}+"["{digit}"]"+"["{digit}"]"		{ printf("Matriz: [%s]\t", yytext) ;};


'([^'\n]|\\n|\\\\)'         { printf("Char: [%s]\t", yytext)	      ;};
\"[^\"\n]*\"		    { printf("String: [%s]\t", yytext)     ;};

[ \t\r]					  { /* DO NOTHING  */ }
"//".*					  { printf("Comentario: [%s]", yytext); }
[/][*][^*]*[*]+([^*/][^*]*[*]+)*[/]       { printf("Comentario: [%s]", yytext); }
[/][*]                                    { printf("Comentario indeterminado: [%s]", yytext); }
"\""                                      { printf("Aspas duplas indeterminada: [%s]", yytext)  ; }
.					  { printf("Caractere desconhecido: [%s]",yytext)   ;}
%%

int yywrap()
{
return 1;
}

int main()
{



yylex();


return 0;
system("PAUSE");

}
