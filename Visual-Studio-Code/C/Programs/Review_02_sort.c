#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int merge(int *arr,int left,int mid,int right);
int mergeSort(int *arr,int min,int max);
//Shell Sort
//Quick Sort
//Heap Sort

int printArr(int *arr,int N){
    printf("Printing Array : ");
    for(int i = 0; i<N ;i++){
        printf("[%d] ",arr[i]);
    }
    printf("\n");
    return 0;
}

void swap(int *one,int *two){
    int temp = *one;
    *one = *two;
    *two = temp;
}



int merge(int *arr,int left,int mid,int right){

    int i,j,k;

    int size1 = mid - left + 1;    // 1 2 3 NULL
    int size2 = right - mid;       // 4 5 6

    int num1[size1];
    int num2[size2];

    for(i = 0; i<size1 ;i++){ //size1
        num1[i] = arr[i + left]; 
    }

    for(j = 0; j<size2 ; j++){ //size2
        num2[j] = arr[j + mid + 1];
    }

    i = j = 0;
    k = left;

    while(i<size1 && j<size2){
        if(num1[i] > num2[j]){
            arr[k] = num2[j];
            j++;
        }else{
            arr[k] = num1[i];
            i++;
        }
        k++;
    }

    while(i<size1){
        arr[k] = num1[i];
        i++;
        k++;
    }

    while(j<size2){
        arr[k] = num2[j];
        j++;
        k++;
    }

}   

int mergeSort(int *arr,int left,int right){
    if(left<right){
        
        int mid = (right+left)/2;

        mergeSort(arr,left,mid); //mergeSort(arr,left,mid-1);
        mergeSort(arr,mid+1,right); //mergeSort(arr,mid,right);
        merge(arr,left,mid,right);
    }
    return 0;
}


int main(){

    int arr[] = {6,3,1,8,9,2,4,5,7};
    int size = sizeof(arr)/sizeof(arr[0]);

    mergeSort(arr,0,size);
    printArr(arr,size);

    return 0;
}