#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>

typedef struct node{
    int key;
    int height;
    struct node *left,*right;
}node;

node *newNode(int key){
    node *temp = malloc(sizeof(node));
    temp->key = key;
    temp->left = temp->right = NULL;

    return temp;
}




int height(struct node *N){
    if(N == NULL){
        return 0;
    }

    return N->height;
}

int max(int a,int b){
    return (a > b)? a : b;
}





node *insertNode(node *temp,int key){

    if(temp == NULL){
        return newNode(key);
    }

    if(temp->key > key){
        temp->left = insertNode(temp->left,key);
    }

    if(temp->key < key){
        temp->right = insertNode(temp->right,key);
    }

    return temp;
}

void printPreOrder(node *temp){

    if(temp == NULL){
        return;
    }

    printf("%d ",temp->key);
    printPreOrder(temp->left);
    printPreOrder(temp->right);
}


int main(){

    node *tree = NULL;
    
    tree = insertNode(tree,50);

    insertNode(tree,50);
    insertNode(tree,30);
    insertNode(tree,20);
    insertNode(tree,40);
    insertNode(tree,70);
    insertNode(tree,60);
    insertNode(tree,80);

    printPreOrder(tree);

    return 0;
}