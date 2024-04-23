%{
#include<stdio.h>
int pc=0,sc=0;
%}
%%
printf {pc++;}
scanf {sc++;}
%%
int yywrap()
{
	return 1;
}
int main()
{
	yylex();
	printf("printf=%d and scanf=%d",pc,sc);
}
