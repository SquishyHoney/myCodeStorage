#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef struct node{
    char name[10];
    int level;
    struct node *next;
}node;

node *createNewNode(char *Ctemp,int Itemp){
    node *temp = malloc(sizeof(node));

    strcpy(temp->name,Ctemp);
    temp->level = Itemp;
    temp->next = NULL;

    return temp;
}

void printLinkedList(node *start){
    node *temp = start;
    int i = 0;

    while(temp != NULL){

        printf("%d.[%d][%s]\n",i+1,temp->level,temp->name);
        i++;
        temp = temp->next;

    }
}

int main(){

    node *head,*mid,*tail;

    head = malloc(sizeof(node));
    mid = malloc(sizeof(node));
    tail = malloc(sizeof(node));

    head = createNewNode("Diluc",90);
    mid = createNewNode("Mona",89);
    tail = createNewNode("Venti",88);

    head->next = mid;
    mid->next = tail;
    tail->next = NULL;

    printLinkedList(head);
    
    node *trash;
    trash = malloc(sizeof(node));
    trash = head;


    return 0;
}