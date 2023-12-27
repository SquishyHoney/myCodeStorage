#include <stdio.h>
#include <math.h>

int swap(int *one,int *two){
    int temp = *one;
    *one = *two;
    *two = temp;

    //printf("Swapped %d and %d\n",*one,*two);

    return 0;
}

void printArr(int *Arr){
    int size = sizeof(Arr)/sizeof(Arr[1]);
    for(int i=0;i<size;i++){
        printf("[%d] ",Arr[i]);
    }
    printf("\n");
}


int partition(int *Arr, int left,int right){

    int pivot = Arr[right];
    int i = left - 1;

    for(int j = left; j <= right-1 ; j++){
        if(Arr[j] <= pivot){
            i++;
            swap(&Arr[i],&Arr[j]);
        }
    }

    swap(&Arr[i+1],&Arr[right]);
    return (i+1);
}

void quickSort(int *Arr,int left,int right){
    
    if(left<right){

        int pi = partition(Arr,left,right);
        quickSort(Arr,left,pi-1);
        quickSort(Arr,pi+1,right);
    
    }
}


int jumpSearch(int *Arr,int size,int key){

    int start = 0;
    int jump = sqrt(size);

    while(Arr[jump] <= key && jump<size){

        start = jump;
        jump  += sqrt(size);

        if(Arr[jump] == key){
            return printf("Found %d at index [%d]\n",key,jump+1);
        }

        if(jump > size){
            jump = size;
        }

    }

    for(int i=jump;i>start;i--){
        if(Arr[i] == key){
            return printf("Found %d at the [%d] index\n",key,i+1);
        }
    }

    return printf("%d is not in the array\n",key);
}

int main(){

    int key = 266;
    //int num[] = {1,2,5,7,6,3,8,4,9,10,11};
    int num[] = {122,168,142,238,266,215,107,128};
    int size = sizeof(num)/sizeof(num[0]);

    quickSort(num,0,size-1);

    for(int i=0;i<size;i++){
        printf("%d. %d \n",i+1,num[i]);
    }

    jumpSearch(num,size,key);
    printf("Size : %d\n",size);

    return 0;
}