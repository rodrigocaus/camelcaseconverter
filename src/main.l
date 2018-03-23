/*
 *  CamelCase e snake_case converter
 *
 *  Rodrigo Oliveira Caus - 186807
 *
 */
 /*
  *  Caso snake_case, em que forma-se palavras da forma
  *  palavra1_palavra2_...palavra[N-1]_palavra[N], N >= 2
  */
  /*
   *  Caso CamelCase, em que forma-se palavras da forma
   *  Palavra1Palavra2...Palavra[N], N >= 2
   */
%{

#include <stdio.h>
#include "ccc_lib.h"
#define MAXCHAR 100
char output[MAXCHAR];

%}

/*
 *  Um ERRO consiste em uma string que comece como CamelCase e
 *  encontre um "_", ou que comece como snake_case e encontre uma
 *  letra A-Z (maiúscula).
 */
ERRO   [^A-Za-z0-9](([A-Z][A-Za-z]*\_)|([a-z][a-z\_]*[A-Z]))[A-Za-z\_]*
ERROBOF ((^[A-Z][A-Za-z]*\_)|(^[a-z][a-z\_]*[A-Z]))[A-Za-z\_]*



%%

([a-z]+\_)+[a-z]+ {
    underline_to_camelcase(yytext, output);
    printf("%s", output);
}

([A-Z][a-z]*){2,} {
    camelcase_to_underline(yytext, output);
    printf("%s", output);
}

(.*{ERRO}.*) {
    printf("ERRO");
}

(.*{ERROBOF}.*) {
    printf("ERRO");
}

%%

int main() {
  yylex();
  return 0;
}
