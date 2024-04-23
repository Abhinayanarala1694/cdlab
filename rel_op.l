
%{
	#include<stdio.h>
%}

%%
">"|"<"|">="|"<="|"=="|"!=" {printf("entered operator is a relational operator");}
.* printf("wrong");
%%
int main()
{
	printf("enter input ");
	yylex();
	return 0;
}
int yywrap(){return 1;}
/*
lex rel_op.l
student@student-TravelMate-P243-M:~/Music/SAYONARA$ gcc lex.yy.c
student@student-TravelMate-P243-M:~/Music/SAYONARA$ ./a.out
enter input  >=
wrong
a>b
wrong
>
entered operator is a relational operator
*/
