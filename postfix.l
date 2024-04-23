%{
#include "y.tab.h"
void yyerror(char *s);
%}

%%
[0-9]+ {yylval = atoi(yytext);return id;}
[+/*-] {return yytext[0];}
%%
int yywrap(void){
return 1;
}
/*
 lex postfix.l
student@student-TravelMate-P243-M:~/Music/SAYONARA/YACC$ yacc -d postfix.y
student@student-TravelMate-P243-M:~/Music/SAYONARA/YACC$ gcc lex.yy.c y.tab.c

student@student-TravelMate-P243-M:~/Music/SAYONARA/YACC$ ./a.out
(a+b+c)ab+c+
student@student-TravelMate-P243-M:~/Music/SAYONARA/YACC$ 

*/
