#include <stdio.h>
#include <stdlib.h>

int main(){ 

    int size;
    printf("Enter The Size : ");
    scanf("%d",&size);

    int *array = malloc(sizeof(size));
    for(int i=0; i<size ;i++){
        printf("Enter [%d] : ",i+1);
        scanf("%d",&array[i]);
    }

    for(int i=0; i<size ;i++){
        printf("%d ",array[i]);
    }

    return 0;
}