#include <stdio.h>
#include <stdlib.h>

typedef struct departamento {
        int cod;
        char descricao[30];
} Departamento;

typedef struct cargo {
        int cod;
        char descricao[30];
} Cargo;

typedef struct funcionario {
        int cod;
        char nome[30];
        float salario;
        Departamento depto;
        Cargo cargo;
} Funcionario;

int main(void)
{
     
}
