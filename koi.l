%{
int keywordCount = 0;
int operatorCount = 0;
int identifierCount = 0;
int specialCharCount = 0;
%}

%%

"auto"|"break"|"case"|"char"|"const"|"continue"|"default"|"do"|"double"|"else"|"enum"|"extern"|"float"|"for"|"goto"|"if"|"int"|"long"|"register"|"return"|"short"|"signed"|"sizeof"|"static"|"struct"|"switch"|"typedef"|"union"|"unsigned"|"void"|"volatile"|"while" { keywordCount++; }
"+"|"-"|"*"|"/"|"%"|"="|"=="|"!="|"<"|">"|"<="|">="|"++"|"--"|"&&"|"||"|";"|","|"."|":"|"!"|"&"|"|"|"^"|"<<"|">>" { operatorCount++; }
[a-zA-Z_][a-zA-Z0-9_]* { identifierCount++; }
. { specialCharCount++; }

%%

int main() {
    printf("Enter input: ");
    yylex();
    printf("Number of keywords: %d\n", keywordCount);
    printf("Number of operators: %d\n", operatorCount);
    printf("Number of identifiers: %d\n", identifierCount);
    printf("Number of special characters: %d\n", specialCharCount);
    return 0;
}
int yywrap()
{
return 1;
}
