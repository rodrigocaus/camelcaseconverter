/*
 *  CamelCase e snake_case converter
 *
 *  Rodrigo Oliveira Caus - 186807
 *
 */

#include <ctype.h>
#include "ccc_lib.h"
#define MAXCHAR 100

void camelcase_to_underline(char *input, char *output) {
    int j = 0;
    for(int i = 0; i < MAXCHAR; i++) {
        if(input[i] >= 'A' && input[i] <= 'Z') {
            //Apenas no meio da palavra
            if(i>0)
                output[j++] = '_';
            output[j++] = tolower(input[i]);
        }
        else
            output[j++] = input[i];
    }
    output[j] = 0;
    return;
}

void underline_to_camelcase(char *input, char *output) {
    int j = 0;
    output[j++] = toupper(input[0]);
    for(int i = 1; i < MAXCHAR; i++) {
        if(input[i] == '_' && i+1 < MAXCHAR) {
            output[j++] = toupper(input[++i]);
        }
        else
            output[j++] = input[i];
    }
    output[j] = 0;
    return;
}
