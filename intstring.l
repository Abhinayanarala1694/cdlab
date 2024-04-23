%{
int intCount = 0;
int strCount = 0;
%}

%%

[0-9]+     { intCount++; }
[a-zA-Z]+  { strCount++; }

.          ;

%%

int main() {
    yylex();
    printf("Number of integers: %d\n", intCount);
    printf("Number of strings: %d\n", strCount);
    return 0;
}
int yywrap()
{
return 1;
}

/*
lex intstring.l
 gcc lex.yy.c
./a.out
abc 12 34 56 bcd

Number of integers: 3
Number of strings: 2
/*
