#include <stdio.h>

int swap(int *one,int *two){
    int temp = *one;
    *one = *two;
    *two = temp;

    printf("Swapped %d and %d\n",*one,*two);
    
    return 0;
}

int selectionSort(int *Arr,int size){

    int iMin;

    for(int i=0;i<size;i++){

        iMin = i;

        for(int j=i;j<size;j++){

            if(Arr[j] < Arr[iMin]){
                iMin = j;
            }

        }

        if(iMin != i){
            swap(&Arr[iMin],&Arr[i]);
        }

    }

    return 0;
}

int binarySearch(int *Arr,int size,int key){

    int index;
    int low,mid,high;

    low = 0;
    high = size-1;

    while(low<=high){

        mid = (high+low)/2;

        if(Arr[mid] == key){

            index = mid;
            return printf("Found %d at index [%d]",key,index+1);

        }else if(Arr[mid] > key){

            high = mid-1;

        }else if(Arr[mid] < key){

            low = mid+1;

        }
    
    }

    return printf("%d not found in the Array",key);
}

int main(){

    int num[] = {6,7,4,2,1,8,9,10,3,5};
    int size = sizeof(num)/sizeof(num[0]);

    selectionSort(num,size);

    for(int i=0;i<size;i++){
        printf("[%d] ",num[i]);
    }
    printf("\n");

    int key = 11;
    printf("Finding %d\n",key);
    binarySearch(num,size,key);

    return 0;
}