
%{
	#include<stdio.h>
	int m;
%}

%%
[0-9]+ {m=atoi(yytext); if(m%2==0)printf("even"); else printf("odd");}
%%
int main()
{
	printf("enter a number");
	yylex();
	return 0;
}
int yywrap(){return 0;}


/* student@student-TravelMate-P243-M:~/Music/SAYONARA$  lex even_odd.l
student@student-TravelMate-P243-M:~/Music/SAYONARA$   gcc lex.yy.c
student@student-TravelMate-P243-M:~/Music/SAYONARA$    ./a.out
enter a number 2 5 6 7 9
 even odd even odd odd

/*
