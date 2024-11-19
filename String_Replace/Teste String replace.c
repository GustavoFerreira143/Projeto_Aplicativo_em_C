#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char *str_replace(const char *orig, const char *rep, const char *with) {
    char *result;    // String resultante
    char *ins;       // Posi��o atual na string original
    char *tmp;       // Para armazenar posi��es tempor�rias
    int len_rep;     // Comprimento da string a ser substitu�da
    int len_with;    // Comprimento da string substituta
    int len_front;   // Comprimento at� a parte da string antes da ocorr�ncia encontrada
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

    // Alocar mem�ria para a nova string resultante
    tmp = result = malloc(strlen(orig) + (len_with - len_rep) * count + 1);

    if (!result)
        return NULL;

    // Substituir cada ocorr�ncia
    while (count--) {
        ins = strstr(orig, rep);    // Encontrar a pr�xima ocorr�ncia de rep
        len_front = ins - orig;     // Dist�ncia at� a ocorr�ncia encontrada
        tmp = strncpy(tmp, orig, len_front) + len_front; // Copiar parte antes da ocorr�ncia
        tmp = strcpy(tmp, with) + len_with;              // Copiar string substituta
        orig += len_front + len_rep;                     // Avan�ar para a pr�xima parte
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
        free(result); // N�o esquecer de liberar a mem�ria alocada
    }

    return 0;
}
