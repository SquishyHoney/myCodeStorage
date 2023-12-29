#include <stdio.h>

void printArr(int *arr, int size) {
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int merge(int *arr,int low,int mid,int high){

    int left = mid - low + 1; //+1
    int right = high - mid;

    int arr1[left];
    int arr2[right];

    int i,j,k;

    for(i=0 ; i<left ; i++){
        arr1[i] = arr[low + i];
    }

    for(j=0 ; j<right ; j++){
        arr2[j] = arr[mid + j + 1];//+1
    }

    i = 0;
    j = 0;
    k = low;

    while(i<left && j<right){
        if(arr1[i] > arr2[j]){
            arr[k] = arr2[j];
            j++;
        }else{
            arr[k] = arr1[i];
            i++;
        }
        k++;
        printArr(arr,high);
    }

    while(i<left){
        arr[k] = arr1[i];
        k++;
        i++;
    }

    while(j<right){
        arr[k] = arr2[j];
        k++;
        j++;
    }

    return 0;
}

int mergeSort(int *arr,int low,int high){

    if(low<high){
        int mid = (high+low)/2;
        mergeSort(arr,low,mid);
        mergeSort(arr,mid+1,high);
        merge(arr,low,mid,high);
    }

    return 0;
}

int main(){

    int arr[] = {9,5,1,3,2,4,6,7,8};
    int size = sizeof(arr)/sizeof(arr[0]);

    for(int i=0;i<size;i++){
        printf("%d ",arr[i]);
    }
            
    mergeSort(arr,0,size-1);

    for(int i=0;i<size;i++){
        printf("%d ",arr[i]);
    }

    return 0;
}