#include <stdio.h>
#include <stdlib.h>

#include "list.h"

typedef struct _hash_t {
  int sum;
  int len;
} hash_t;

hash_t hash(char word[]) {
  hash_t ret = {0,0};
  int i;

  for (i = 0; word[i] != '\0'; i++) {
    ret.sum += word[i];
  }
  ret.len = i;

  return ret;
}

int eq(hash_t h1, hash_t h2) {
  return (h1.sum == h2.sum) && (h1.len == h2.len);
}

int is_anagram(char w1[], char w2[]) {
  return eq(hash(w1), hash(w2));
}

char** collect_anagrams(char* anagrams[], int len) {
  char** ret = (char**) malloc(len * sizeof(char));
  return ret;
}

int main(int argc, char* argv[]) {
  char* input[] = {"lol", "llo"};
  char* output[2];

  collect_anagrams(input, 2);

  list_t* list = list_new();
  list = list_append(list, "lol");
  list = list_append(list, "lool");
  pretty_print(list);
}
