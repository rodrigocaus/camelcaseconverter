# CamelCaseConverter

Dois estilos muito utilizados na programação são o uso de underlines e o uso de
capitalização. Dois exemplos deles são: `isto_eh_underline` e
`IstoEhCamelCase`. Nesta tarefa, você deverá escrever um programa em Lex que
recebe um texto como entrada e converte todas as palavras escritas em CamelCase
para notaçaõ underline e vice-versa. Se o programa encontrar alguma palavra que
misture CamelCase e underline, deverá imprimir na tela somente a mensagem:
`ERRO`.

## Informações adicionais
O programa deve ser escrito em Lex (o Makefile que acompanha esta tarefa já
contempla a compilação em Lex ao usar `make` e `make test`). Veja que há um
arquivo `src/main.l` que deverá ser modificado para propor a solução desta
tarefa. O arquivo `src/ccc_lib.c` deverá ser modificado para conter as funções
que convertem de CamelCase para underline e vice-versa. O arquivo
`src/ccc_lib.h` não pode ser modificado.


## Exemplos

Entrada | Saida
------- | -----
`CamelCase` | `camel_case`
`usando_underline` | `UsandoUnderline`
`CaracteresMistos criando ambiente_misturado` | `caracteres_mistos criando AmbienteMisturado`
`MisturaCamel_case_e_underline` | `ERRO`

## Instruções adicionais

1. Vá diretamente ao conjunto de testes para verificar como tratar casos
   limítrofes ou mal-definidos.
1. Lembre-se de seguir as [instruções de submissão](doc/instrucoes.md).
1. Se desejar, proponha novos casos de teste.
