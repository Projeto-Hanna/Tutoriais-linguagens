
#include <stdio.h>
#include <stdlib.h>

typedef struct no {
  int dado;
  struct no *proximo;
} tipoNo;

typedef struct {
  tipoNo* head;
  int quantidade;
} lista;

void inicializaLista(lista* l) {
  l->quantidade = 0;
  l->head = NULL;
};

int adicionaNaLista(lista *l, tipoNo* no) {
  if (l->head == NULL) {
    l->quantidade = 1;
    l->head = no;
    return 1;
  }

  tipoNo* atual = l->head;
  while (atual->proximo != NULL) {
    atual = atual->proximo;
  }

  atual->proximo = no;
  l->quantidade++;
  return 1;
}

tipoNo* criarNo(int dado) {
  tipoNo * no = (tipoNo*) malloc(sizeof(tipoNo));
  no->dado = dado;
  no->proximo = NULL;
  return no;
}

void printaLista(lista *l) {
  tipoNo* atual = l->head;

  printf("Quantidade: %d\n", l->quantidade);
  while (atual != NULL) {
    printf("- %d\n", atual->dado);
    atual = atual->proximo;
  }
}

void liberaLista(lista *l) {
  tipoNo* atual = l->head;
  while (atual != NULL) {
    tipoNo* desalocado = atual;
    atual = atual->proximo;
    free(desalocado);
  }

  l->quantidade = 0;
  l->head = NULL;
}

void buscaIdade(lista* l, int dado) {
  tipoNo* atual = l->head;
  int index = -1;

  while (atual != NULL) {
    index++;
    if (atual->dado == dado) {
      break;
    }
    atual = atual->proximo;
  }

  printf("Indice: %d\n", index);
}

int main () {
  lista l;
  inicializaLista(&l);

  tipoNo * no = criarNo(19);
  adicionaNaLista(&l, no);

  tipoNo * no2 = criarNo(22);
  adicionaNaLista(&l, no2);

  if (l.head == NULL) {
    printf("Lista vazia\n");
    return 0;
  }

  printaLista(&l);
  buscaIdade(&l, 22);

  liberaLista(&l);

  printaLista(&l);
  return 0;
}
