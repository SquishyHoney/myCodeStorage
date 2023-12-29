#include <stdio.h>

void swap(int *one,int *two){   
    int temp = *one;
    *one = *two;
    *two = temp;
}

int insertionSort(int *arr,int size){

    for(int i=0; i<size; i++){
        int j = i;
        while(j>0 && arr[j] <= arr[j-1]){
            swap(&arr[j],&arr[j-1]);
            j--;
        }
    }
    
    return 0;
}

int main(){

    int arr[] = {7,3,6,5,1,2,9,4,8};
    int size = sizeof(arr)/sizeof(arr[1]);
    insertionSort(arr,size);

    for(int i=0; i<size; i++){
        printf("%d ",arr[i]);
    }

    return 0;
}