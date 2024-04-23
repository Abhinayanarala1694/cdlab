%option noyywrap
%{
	#include<stdio.h>
	int i_c=0,f_c=0;
%}

%%
[+-]?[0-9]* {printf("Integer\n");i_c++;}
[+-]?[0-9]*"."[0-9]+ {printf("Float");f_c++;}
"$" {return 1;}
%%
int main()
{
	printf("Enter numbers:");
	yylex();
	printf("\nTotal Integers: %d\nTotal Float numbers: %d",i_c,f_c);
	return 0;
}


/*
 lex int_float_count.l
gcc lex.yy.c
 ./a.out
Enter numbers: 12 3.5 6 7 8.2
 Integer
 Float Integer
 Integer
 Float
/*

