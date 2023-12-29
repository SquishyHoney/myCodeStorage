#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Stack of books (Last in , first out)

struct node{
    char books[100];
    struct node *next;
};

int isEmpty(struct node *head){
    
    if(head == NULL){
        return 1;
    }
    return 0;
}

void push(struct node **head,char *bookPtr){

    struct node *temp = malloc(sizeof(struct node));
    strcpy(temp->books , bookPtr);
    temp->next = NULL;

    if(!(isEmpty(*head))){
        temp->next = *head;
    }

    *head = temp;

    printf("Placed [%s]\n",bookPtr);
}

void pop(struct node **head){

    if(isEmpty(*head)){
        printf("Done!\n");
        return ;
    }

    struct node *trash = *head;
    *head = trash->next;

    printf("Took [%s]\n",trash->books);
    free(trash);
}

int main(){

    struct node *desk = NULL;

    push(&desk,"Science");
    push(&desk,"Social Studies");
    push(&desk,"English");
    push(&desk,"Math");
    push(&desk,"Indonesia");

    printf("---------------\n");

    while(!(isEmpty(desk))){
        pop(&desk);
    }

    return 0;
}