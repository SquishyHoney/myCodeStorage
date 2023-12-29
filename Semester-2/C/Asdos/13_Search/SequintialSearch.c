#include <stdio.h>
#include <stdlib.h>

int sequintialSearch(int *arr,int size,int key){

    for(int i=0 ;i<size ;i++){
        if(arr[i] == key){
            return printf("Found %d at index %d\n",arr[i],i);
        }
    }

    return printf("Not found %d at array\n",key);
}

int main(){

    int num[] = {9,4,6,8,7,1,2,3,5};
    int size = sizeof(num)/sizeof(num[0]);
    int key = 7;

    printf("Searching %d in array... \n",key);
    sequintialSearch(num,size,key);

    return 0;
}