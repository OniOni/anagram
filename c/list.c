#include <stdio.h>
#include <stdlib.h>

#include "list.h"

list_t*  list_new() {
  list_t * list = (list_t*) malloc(sizeof(list_t));
  list->head = NULL;
  list->tail = NULL;
  list->len = 0;

  return list;
}

node* new_node(char val[]) {
  node * new = (node*) malloc(sizeof(node));
  new->val = val;
  new->next = NULL;

  return new;
}

list_t* list_append(list_t* list, char val[]) {
  node* new = new_node(val);

  if (list->head == NULL) {
    list->head = new;
  } else {
    list->tail->next = new;
  }

  list->tail = new;
  list->len += 1;

  return list;
}

void pretty_print(list_t* list) {
  for (node* n = list->head; n->next != NULL; n = n->next) {
    printf("%s,", n->val);
  }
}
