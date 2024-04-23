%{
int datatypeCount = 0;
int keywordCount = 0;
int identifierCount = 0;
int specialSymbolCount = 0;
%}

%%

"int"|"char"|"float"|"double"|"void" { datatypeCount++; }
"auto"|"break"|"case"|"const"|"continue"|"default"|"do"|"else"|"enum"|"extern"|"for"|"goto"|"if"|"long"|"register"|"return"|"short"|"signed"|"sizeof"|"static"|"struct"|"switch"|"typedef"|"union"|"unsigned"|"volatile"|"while" { keywordCount++; }
[a-zA-Z_][a-zA-Z0-9_]* { identifierCount++; }
[^\t\n\r\f a-zA-Z0-9_] { specialSymbolCount++; }

%%

int main() {
    printf("Enter input: ");
    yylex();
    printf("Number of data types: %d\n", datatypeCount);
    printf("Number of keywords: %d\n", keywordCount);
    printf("Number of identifiers: %d\n", identifierCount);
    printf("Number of special symbols: %d\n", specialSymbolCount);
    return 0;
}
int yywrap()
{
return 1;
}


/* tudent@student-TravelMate-P243-M:~/Music/SAYONARA$ lex dkis.l
student@student-TravelMate-P243-M:~/Music/SAYONARA$ gcc lex.yy.c
student@student-TravelMate-P243-M:~/Music/SAYONARA$ ./a.out
Enter input:  float if $%# abc
    
Number of data types: 1
Number of keywords: 1
Number of identifiers: 1
Number of special symbols: 3
student@student-TravelMate-P243-M:~/Music/SAYONARA$ 
/*

