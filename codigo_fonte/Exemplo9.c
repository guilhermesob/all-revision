#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <locale.h>
 
typedef struct {
    int codigo;
    char nome[200];
    struct {
       int dia;
       int mes;
       int ano;
    };
} Aluno;
Aluno aluno;
 
int main(void) {
    setlocale(LC_ALL,"portuguese");
    aluno.codigo = 0;
    strcpy(aluno.nome, "NULL");
    aluno.dia = 0;
    aluno.mes = 0;
    aluno.ano = 0;
    printf(" \n O c�digo do aluno �: %d ", aluno.codigo);
    printf(" \n O nome do aluno �: %s ", aluno.nome);
    printf(" \n A data de nascimento do aluno �: %d / %d / %d ", aluno.dia,aluno.mes, aluno.ano);
    printf(" \n \n");
    printf(" Digite o c�digo do aluno: ");
    scanf("%d%*c", &aluno.codigo);
    printf(" Digite o nome do aluno: ");
    scanf("%s%*c", &aluno.nome);
    printf(" Digite o dia do nascimento do aluno: ");
    scanf("%d%*c", &aluno.dia);
    printf(" Digite o m�s do nascimento do aluno: ");
    scanf("%d%*c", &aluno.mes);
    printf(" Digite o ano do nascimento do aluno: ");
    scanf("%d%*c", &aluno.ano);
    printf(" \n O c�digo do aluno �: %d ", aluno.codigo);
    printf(" \n O nome do aluno �: %s ", aluno.nome);
    printf(" \n A data de nascimento do aluno �: %d / %d / %d ", aluno.dia, aluno.mes, aluno.ano);
    printf(" \n \n");
    system("pause");
    return(0);
}
