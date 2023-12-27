#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct queue{
    
    char name[20];
    struct queue *next;

};

int isEmpty(struct queue *head){

    if(head == NULL){
        return 1;
    }

    return 0;
}

void enQueue(struct queue **head, struct queue **tail ,char *namePtr){

    struct queue *temp = malloc(sizeof(struct queue));
    strcpy(temp->name , namePtr);
    temp->next = NULL;

    if(isEmpty(*head)){
        *head = temp;
    }else{
        (*tail)->next = temp;
    }
    *tail = temp;
    
    printf("[%-10s] waiting\n",namePtr);
}

void deQueue(struct queue **head){
    
    if(isEmpty(*head)){
        printf("Nobody is waiting\n");
        return;
    }

    struct queue *trash = NULL;
    trash = *head;

    printf("Serving [%-10s]\n",trash->name);
    *head = trash->next;
    free(trash);
}

int main(){

    struct queue *head,*tail;
    head = tail = NULL;

    enQueue(&head,&tail,"Benedictus");
    enQueue(&head,&tail,"Gildas");
    enQueue(&head,&tail,"Evander");
    enQueue(&head,&tail,"Nikolai");

    printf("%-20s\n","[-----Serving-----]");

    do{
        deQueue(&head);
    }while(!(isEmpty(head)));

    deQueue(&head);

    return 0;
}