#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

void bubbleSort(int *arr,int N);
void insertionSort(int *arr,int N);
void selectionSort(int *arr,int N);
//Radix 

void swap(int *one,int *two){
    int temp = *one;
    *one = *two;
    *two = temp;
}

void printArray(int *arr,int N){
    printf("Printing Array : ");
    for(int i = 0; i<N ;i++){
        printf("[%d] ",arr[i]);
    }
    printf("\n");
}


void bubbleSort(int *arr,int N){
    for(int i = 0; i<N ; i++){
        for(int j = 0 ; j<N-1 ; j++){
            if(arr[j] > arr[j+1]){
                swap(&arr[j], &arr[j+1]);
            }
        }
    }
}


void insertionSort(int *arr,int N){
    for(int i = 0 ; i<N ; i++){
        int j = i;
        while(j>0 && arr[j-1] > arr[j]){
            swap(&arr[j], &arr[j-1]);
            j--;
        }
    }
}


void selectionSort(int *arr,int N){
    int iMin;
    for(int i = 0; i<N ; i++){
        iMin = i;
        for(int j = i; j<N ;j++){
            if(arr[iMin] > arr[j]){
                iMin = j;
            }
        }
        if(iMin != i){
            swap(&arr[iMin], &arr[i]);
        }
    }
}


int main(){

    int arr1[] = {9,1,3,5,6,2,7,8,4};
    int arr2[] = {4,6,8,3,7,2,1,5,9};

    int size1 = sizeof(arr1)/sizeof(arr1[0]);
    int size2 = sizeof(arr2)/sizeof(arr2[0]);

    bool while_loop = true;
    int switch_num;

    printf("Welcome to my sorting program!\n");

    while(while_loop){ 
        printf("1. Bubble Sort\n");
        printf("2. Selection Sort\n");
        printf("3. Insertion Sort\n");
        printf("4. Print Array\n");
        printf("Please Pick : ");
        scanf("%d",&switch_num);

        switch(switch_num){

            case 1:
                bubbleSort(arr1, size1);
                break;

            case 2:
                selectionSort(arr1,size1);
                break;

            case 3:
                insertionSort(arr1,size1);
                break;
            
            case 4:
                printArray(arr1,size1);
                break;
            
            default:
                printf("!! Please Enter Valid Option\n");
                break;
            
        }
    }

    return 0;
}