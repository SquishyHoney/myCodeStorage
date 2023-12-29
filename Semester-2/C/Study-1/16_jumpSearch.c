#include <stdio.h>
#include <math.h>
#include <stdlib.h>

int swap(int *one,int *two){

    int temp = *one;
    *one = *two;
    *two = temp;

    return 0;//printf("Swapped %d and %d\n",*one,*two);
}

int insertionSort(int *Arr,int size){

    int j;

    for(int i=0;i<size;i++){

        j=i;

        while(j>0 && Arr[j] < Arr[j-1]){

            swap(&Arr[j],&Arr[j-1]);
            j--;

        }

    }

    return 0;
}

int jumpSearch(int *Arr,int size,int key){

    int index;
    int start = 0;
    int jump = sqrt(size);

    while(Arr[jump] <= key && jump < size){

        start = jump;
        jump += sqrt(size);
        
        if( jump > size ) jump = size;

    }

    for(int i=start;i<jump;i++){
        if(Arr[i] == key){
            index = i;
            return printf("Found %d at index [%d]\n",key,index+1);
        }
    }

    return printf("%d is not in the Array\n",key);
}

int main(){

    int num[] = {6,7,4,2,1,8,9,10,3,5};
    int size = sizeof(num)/sizeof(num[0]);

    insertionSort(num,size);

    for(int i=0;i<size;i++){
        printf("[%d] ",num[i]);
    }
    printf("\n");

    jumpSearch(num,size,11);

    return 0;
}