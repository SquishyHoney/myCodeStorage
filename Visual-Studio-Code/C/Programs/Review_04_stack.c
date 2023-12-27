#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

typedef struct{
    int number;
    char name[20];
    struct node *next;
}node;

int isEmpty(struct node *temp){
    return temp == NULL;
}

int stack(struct node *temp,int key){
    node *stack = malloc(sizeof(node));
    stack->number = key;
    stack->next = NULL;

    if(isEmtpy(temp)){
        temp = stack;
        temp->next = NULL;
        return 0;
    }

}

int main(){
    return 0;
}