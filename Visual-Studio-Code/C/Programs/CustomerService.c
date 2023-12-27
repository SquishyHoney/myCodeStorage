#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdbool.h>
#include <malloc.h>

struct node{
    char name[20];
    struct node *next;
};

bool isEmpty(struct node *head){
    return head == NULL;
}

void waiting(struct node **head, struct node **tail, char *namePtr){

    struct node *temp = malloc(sizeof(struct node));
    strcpy(temp->name , namePtr);
    temp->next = NULL;

    if(isEmpty(*head)){
        *head = temp;          // head & temp
    }else{
        (*tail)->next = temp;                            /// head & tail -> temp 
    }
    
    *tail = temp;             // head & temp & tail     /// head         -> temp & tail
    printf("[%s] is waiting\n",namePtr);
}

void serving(struct node **head, struct node **tail){

    if(isEmpty(*head)){
        printf("Nobody to serve");
        return;
    }

    struct node *temp = *head;  // head & trash -> (list)        -> tail
    *head = temp->next;        // temp          -> head & (list) -> tail

    printf("serving [%s]\n",temp->name);
    free(temp);
}

int main(){

    struct node *head,*tail;
    head = tail = NULL;

    char people[][20] = {
        "Raiden",
        "Diluc",
        "Mona",
        "Venti",
    };

    int size = sizeof(people)/sizeof(people[0]);

    for(int i=0;i<size;i++){
        waiting(&head,&tail,people[i]);
    }

    printf("Waiter and Waitresses comming\n");

    while(!(isEmpty(head))){

        serving(&head,&tail);
    }

    return 0;
}