#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int merge(int *arr,int left,int mid,int right);
int mergeSort(int *arr,int left,int right);

int jumpSearch(int *arr,int size,int key);
int binarySearch(int *arr,int size,int key);

int found(int key,int index){
    printf("Found [%d] at [INDEX : %d]\n",key,index);
    return 0;
}

int notFound(int key){
    printf("%d is not in the array\n",key);
    return 0;
}

int printArray(int *arr,int size){

    printf("Printint Array : ");
    for(int i=0; i<size ;i++){
        printf("[%d] ",arr[i]);
    }
    printf("\n");

    return 0;
}

int merge(int *arr,int left,int mid,int right){

    int size1 = mid - left + 1; //
    int size2 = right - mid;

    int temp1[size1];
    int temp2[size2];

    int i,j,k;

    for(i = 0; i<size1 ; i++){
        temp1[i] = arr[i + left];
    }   

    for(j = 0; j<size2 ; j++){
        temp2[j] = arr[j + mid + 1]; //
    }

    i = j = 0;
    k = left;

    while( i<size1 && j<size2 ){
        if(temp1[i] >= temp2[j]){
            arr[k] = temp2[j];
            j++;
        }else{
            arr[k] = temp1[i];
            i++;
        }
        k++;
    }

    while(i<size1){
        arr[k] = temp1[i];
        i++;
        k++;
    }

    while(j<size2){
        arr[k] = temp2[j];
        j++;
        k++;
    }

    return 0;
}

int mergeSort(int *arr,int left,int right){
    if(left<right){
        int mid = (left+right)/2;

        mergeSort(arr,left,mid);
        mergeSort(arr,mid+1,right);
        merge(arr,left,mid,right);
    }
    return 0;
}

int jumpSearch(int *arr,int size,int key){

    int jump = sqrt(size);
    int start = 0;

    while(jump < size && key >= arr[jump]){

        start = jump;
        jump = jump + sqrt(size);
                
        if(jump > size){
            jump = size;
        }

        if(arr[jump] == key){
            return found(key,jump);
        }
    }

    for(int i = jump; i>= start ; i--){
        if(arr[i] == key){
            return found(key,i);
        }
    }

    return notFound(key);
}

int binarySearch(int *arr,int size,int key){

    int high = size;
    int low = 0;
    int mid;

    while( low < high ){
        mid = (low + high)/2;
        if(arr[mid] == key){
            return found(key,mid);
        }
        if(arr[mid] >= key){
            high = mid;
        }
        if(arr[mid] <= key){
            low = mid;
        }
    }

    return notFound(key);
}


int main(){

    int num[] = {50,90,60,100,70,10,80,40,20,30,80};
    int size = sizeof(num)/sizeof(num[0]);

    printArray(num,size);
    mergeSort(num,0,size-1);
    printArray(num,size);

    for(int i=0 ; i<size ;i++){
        binarySearch(num,size,num[i]);
    }

    return 0;
}