#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

  // Rotina para tratamento do sinal capturado
 static void captura(int sinal) {
   if (sinal == SIGINT)
    printf("Recebido o sinal SIGINT.\n");
   if (sinal == SIGTERM)
   printf("Recebido o sinal SIGTERM.\n");
   printf("Pretendo continuar executando!!!\n");
  }

  int main(){
   int i;
   // Captura os sinais SIGINT e SIGTERM
   if ((signal(SIGINT, captura) == SIG_ERR) || (signal(SIGTERM, captura) == SIG_ERR)) {
    printf("Erro ao instalar o tratador do sinais.\n");
    exit(1);
   } 
   i = 1; 
    while (1) { // Loop infinito
    printf("Estou vivo [%d].\n", i++);
    usleep(1000000);
   }
  } 