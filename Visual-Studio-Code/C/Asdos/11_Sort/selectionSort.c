#include <stdio.h>

void swap(int *one,int *two){   
    int temp = *one;
    *one = *two;
    *two = temp;
}

int selectionSort(int *arr,int size){

    for(int i=0; i<size ;i++){

        int iMin = i;

        for(int j=i; j<size ;j++){
            if(arr[j] < arr[iMin]){
                iMin = j;
            }
        }

        if(iMin != i){
            swap(&arr[iMin],&arr[i]);
        }

    }

    return 0;
}

int main(){

    int arr[] = {9,3,6,7,1,4,2,5,8};
    int size = sizeof(arr)/sizeof(arr[1]);

    selectionSort(arr,size);

    for(int i=0; i<size ;i++){
        printf("%d ",arr[i]);
    }

    return 0;
}