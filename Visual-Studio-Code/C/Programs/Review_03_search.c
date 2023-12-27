#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

int sequentialSearch(int *arr,int size,int key);
int jumpSearch(int *arr,int size,int key);
int binarySearch(int *arr,int size,int key);
//Interpolation search

int found(int key,int index){
    printf("Found %-3d at index [%d]\n",key,index);
    return 0;
}
int notFound(int key){
    printf("%-3d is not in the array\n",key);
    return 0;
}
int swap(int *one,int *two){
    int temp = *one;
    *one = *two;
    *two = temp;
    return 0;
}
int sort(int *arr,int size){
    printf("Insertion - Sort\n"); 
    int j;
    for(int i=0 ; i<size ; i++){
        j = i;
        while(j > 0 && arr[j] < arr[j-1]){
            swap(&arr[j],&arr[j-1]);
            j--;
        }
    }
    printf("Array Sorted into : ");
    for(int k = 0 ; k<size ; k++){
        printf("[%d] ",arr[k]);
    }
    printf("\n");
    return 0;
}



int sequentialSearch(int *arr,int size,int key){

    int index;

    for(int i = 0; i<size ;i++){
        if(arr[i] == key){
            return found(key,index);
        }
    }

    return notFound(key);
}

int jumpSearch(int *arr,int size,int key){

    int index;
    int start = 0;
    int jump = sqrt(size);

    while(start < size){
        if(key == arr[start]){
            return found(key,start);
        }
        if(start > size){
            start = size;
        }
        if(key < arr[start]){
            break;
        }
        start += jump;
    }

    for(int i=start; i>0 ;i--){
        if(arr[i] == key){
            return found(key,i);
        }
    }

    return notFound(key);
}

int binarySearch(int *arr,int size,int key){

    int low = 0;
    int high = size;
    int mid;

    while(low<high){
        mid = (low+high)/2;
        if(arr[mid] == key){
            return found(key,mid);
        }
        if(arr[mid] < key){
            low = mid;
        }
        if(arr[mid] > key){
            high = mid;
        }
    }
    
    return notFound(key);
}


int main(){

    int arr[] = {9,5,2,4,6,7,1,3,8,10};
    int big_num[] = {78,209,35,920,12,345,124,533,452,632};
    int size = sizeof(arr)/sizeof(arr[0]);
    int big_size = sizeof(big_num)/sizeof(big_num[0]);

    sort(big_num,size);

    for(int i = 0; i<big_size ;i++){
        binarySearch(big_num,size,big_num[i]);
    }
    binarySearch(big_num,size,100);

    return 0;
}   