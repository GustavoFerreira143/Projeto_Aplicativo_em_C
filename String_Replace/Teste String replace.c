#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char *str_replace(const char *orig, const char *rep, const char *with) {
    char *result;    // String resultante
    char *ins;       // Posição atual na string original
    char *tmp;       // Para armazenar posições temporárias
    int len_rep;     // Comprimento da string a ser substituída
    int len_with;    // Comprimento da string substituta
    int len_front;   // Comprimento até a parte da string antes da ocorrência encontrada
    int count;       // Contador de quantas vezes a string aparece

    // Se rep ou orig for NULL, ou se rep for uma string vazia, retorne a original
    if (!orig || !rep)
        return NULL;
    len_rep = strlen(rep);
    if (len_rep == 0)
        return NULL;
    if (!with)
        with = ""; // Se with for NULL, trate como uma string vazia
    len_with = strlen(with);

    // Contar quantas vezes a string rep aparece em orig
    ins = (char *)orig;
    for (count = 0; (tmp = strstr(ins, rep)); ++count) {
        ins = tmp + len_rep;
    }

    // Alocar memória para a nova string resultante
    tmp = result = malloc(strlen(orig) + (len_with - len_rep) * count + 1);

    if (!result)
        return NULL;

    // Substituir cada ocorrência
    while (count--) {
        ins = strstr(orig, rep);    // Encontrar a próxima ocorrência de rep
        len_front = ins - orig;     // Distância até a ocorrência encontrada
        tmp = strncpy(tmp, orig, len_front) + len_front; // Copiar parte antes da ocorrência
        tmp = strcpy(tmp, with) + len_with;              // Copiar string substituta
        orig += len_front + len_rep;                     // Avançar para a próxima parte
    }
    strcpy(tmp, orig); // Copiar o restante da string original
    return result;
}

int main() {
    char *orig = "75.315.333/0339-70";
    char *result = str_replace(orig, ".", "");
    char *resultado = str_replace(result, "/", "");
    char *resultadocomp = str_replace(resultado, "-", "");
    if (result) {
        printf("String original: %s\n", orig);
        printf("String modificada: %s\n", resultadocomp);
        free(result); // Não esquecer de liberar a memória alocada
    }

    return 0;
}
