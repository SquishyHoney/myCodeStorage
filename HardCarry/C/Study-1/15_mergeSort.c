#include <stdio.h>
#include <math.h>
#include <stdlib.h>
int func1(int global);


int merge(int *Arr,int low,int mid,int high){

    int i,j,k;
    
    int N1 = mid - low + 1; // <---------------- FORGOT -----------------
    int N2 = high - mid; // <---------------- FORGOT -----------------

    int list1[N1];
    int list2[N2];

    for(i=0;i<N1;i++){
        list1[i] = Arr[low + i]; // <---------------- FORGOT -----------------
    }

    for(j=0;j<N2;j++){
        list2[j] = Arr[mid + 1 + j]; // <---------------- FORGOT -----------------
    }

    i = 0;
    j = 0;

    k = low; // <---------------- FORGOT -----------------

    while(i<N1 && j<N2){
        if(list1[i] < list2[j]){
            Arr[k] = list1[i];
            i++;
            k++;
        }else{
            Arr[k] = list2[j];
            j++;
            k++;
        }
        
    }

    while(i<N1){
        Arr[k] = list1[i];
        i++;
        k++;
    }

    while(j<N2){
        Arr[k] = list2[j];
        j++;
        k++;
    }

    return 0;
}

int mergeSort(int *Arr,int low,int high){ 

    if(low<high){
        
        int mid = (low+high)/2;

        mergeSort(Arr,0,mid); // <---------------- FORGOT -----------------
        mergeSort(Arr,mid+1,high); // <---------------- FORGOT -----------------
        merge(Arr,low,mid,high); // <---------------- FORGOT -----------------

    }

    return 0; 
}

int main(){

    int num[] = {6,7,4,2,1,8,9,10,3,5};
    int size = sizeof(num)/sizeof(num[0]);

    mergeSort(num,0,size-1);

    for(int i=0;i<size;i++){
        printf("[%d] ",num[i]);
    }

    return 0;
}



int func1(int global){
    if(global>0){
        global--;
        printf("%d\n",global);
        func1(global);
        printf("Done");
    }
    return 0;
}

