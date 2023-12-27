#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

struct node{
    char item_name[20];
    struct node *next;
};


int isEmpty(struct node *head){
    if(head == NULL){
        return 1;
    }
    return 0;
}


void push(struct node **head,char *item){

    struct node *temp = malloc(sizeof(struct node));
    strcpy(temp->item_name , item);
    temp->next = NULL;

    if(!(isEmpty(*head))){    //Head
        temp->next = *head;   //Head <- temp
    }
    *head = temp;   // (List) <- Head & temp

    printf("[%s] is added into the Tray\n",item);
}


void pop(struct node **head){

    if(isEmpty(*head)){
        printf("Stack is Empty\n");
        return;
    }

    struct node *trash = *head;   // (List) <- Head & trash
    *head = trash->next;
    
    printf("Removed [ %s ] from stack\n",trash->item_name);
    free(trash);
}


struct node *top(struct node *head){
    if(head == NULL){
        return NULL;
    }
    return head;
}


int main(){

    struct node *head = NULL;
    char items[][10] = {
        "Eggs",
        "Beef",
        "Yogurt",
        "Grapes",
        "Yogurt",
        "Apple"
    };

    int size = sizeof(items)/sizeof(items[0]);

    for(int i=0;i<size;i++){
        push(&head,items[i]);
    }


    printf("----Printing Tray----\n");

    while(!(isEmpty(head))){
        
        printf("Next on Tray is [%s]\n",top(head)->item_name);
        sleep(1);

        printf(" Loading");
        for(int i=0;i<3;i++){
            printf(" ...%d",i+1);
            sleep(1);
        }
        printf("\n");

        pop(&head);
        printf("\n");
    }

    return 0;
}