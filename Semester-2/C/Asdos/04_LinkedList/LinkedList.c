#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <malloc.h>

typedef struct{
    char name[30];
    struct node *next;
}Mahasiswa;

Mahasiswa *createNewNode(char *name){

    Mahasiswa *temp = malloc(sizeof(Mahasiswa));
    temp = NULL;
    strcpy(temp->name,name);
    temp->next = NULL;

    return temp;
}

int main(){

    struct Mahasiswa *head, *node;

    head = NULL;
    
    node = createNewNode("First");
    node->next = head;


    node  = createNewNode("Second");
    
    return 0;
}