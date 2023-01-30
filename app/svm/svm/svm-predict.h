#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include "svm.h"

extern int (*info)(const char *fmt,...);
extern struct svm_node *x;
extern int max_nr_attr;

extern struct svm_model* model;
extern int predict_probability;

extern  char *line;
extern  int max_line_len;
int print_null(const char *s,...);
char* readline(FILE *input);
void exit_input_error(int line_num);

void predict(FILE *input, FILE *output);

void exit_with_help();