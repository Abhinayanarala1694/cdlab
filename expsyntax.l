%{
#include<stdio.h>
#include "y.tab.h"
void yyerror(char *s);
%}

%%
[0-9]+ {yylval = atoi(yytext);return id;}
[+/*-] {return yytext[0];}
[\n] {return yytext[0];}
%%
int yywrap(void){
return 1;
}

/*
expsyntax.l
expsyntax.l: command not found
student@student-TravelMate-P243-M:~/Music/SAYONARA/new folder/sdt$ lex expsyntax.l
student@student-TravelMate-P243-M:~/Music/SAYONARA/new folder/sdt$ yacc -d expsyntax.y
student@student-TravelMate-P243-M:~/Music/SAYONARA/new folder/sdt$ gcc lex.yy.c y.tab.c
student@student-TravelMate-P243-M:~/Music/SAYONARA/new folder/sdt$ ./a.out
(5+7)()
()()Valid
*/

