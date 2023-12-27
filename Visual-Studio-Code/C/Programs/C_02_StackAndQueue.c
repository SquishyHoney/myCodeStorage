#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

struct node{
    char item[15];
    struct node *next;
};

bool berisi(struct node *temp){
    return temp != NULL;
}

//---STACK---
void push(struct node **head,char *itemPtr){

    struct node *temp = malloc(sizeof(struct node));
    strcpy(temp->item,itemPtr);
    temp->next = NULL;

    if(berisi(*head)){
        temp->next = *head;
    }

    *head = temp;
    printf("Pushed [%10s]\n",itemPtr);
}


void pop(struct node **head){

    if(!(berisi(*head))){
        printf("Done\n");
        return;
    }

    struct node *temp = *head;
    *head = (*head)->next;

    printf("Pulled [%-10s]\n",temp->item);
    free(temp);
}


int main(){

    struct node *head = NULL;

    push(&head,"Hello");
    push(&head,"My");
    push(&head,"Name");
    push(&head,"Is");
    push(&head,"Evan");

    printf("----------------\n");

    while(berisi(head)){
        pop(&head);
    }

    return 0;
}
