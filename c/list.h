#ifndef LIST_H
#define LIST_H

typedef struct _node {
  struct _node * next;
  char * val;
} node;

typedef struct _list {
  node * head;
  node * tail;
  int len;
} list_t;

list_t * list_new();
node * new_node(char val[]);
list_t * list_append(list_t * list, char val[]);
void pretty_print(list_t * list);

#endif
