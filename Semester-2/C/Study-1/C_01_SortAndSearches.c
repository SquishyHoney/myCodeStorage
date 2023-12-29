#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>


void bubbleSort(int *Arr,int N);
void selectionSort(int *Arr,int N);
void insertionSort(int *Arr,int N);
//void radixSort();

int mergeSort(int *Arr,int l,int r); 
int merge(int *Arr,int left,int mid,int right);
//void shellSort();
//void quickSort();
//void heapSort();

int sequentialSearch(int *Arr,int N,int key);
int binarySearch(int *Arr,int N,int key);
int jumpSearch(int *Arr,int size,int key);
//int interpolationSearch();



int global_INC = 0;
void swap(int *a,int *b)
{
    int temp = *a;
    *a = *b;
    *b = temp;
    printf("Swaped [%d] and [%d]\n",*a,*b);
}
void printArr(int *Arr,int N)
{
    for(int i=0;i<N;i++){
        printf(" %d ",Arr[i]);
    }
    printf("\n\n");
}
int printFound(int num,int index)
{
    printf("Found [%d] at index %d\n\n",num,index);
    return 0;
}
int notFound(int num)
{
    printf("Not Found [%d]\n\n",num);
    return 0;
}




void bubbleSort(int *Arr,int N){
    for(int i=0;i<N;i++){
        for(int j=0;j<N-1;j++){
            printf("\n[%d] and [%d]\n\n",Arr[j],Arr[j+1]);
            if(Arr[j] > Arr[j+1]){
                swap(&Arr[j],&Arr[j+1]);
                printArr(Arr,N);
            }
        }
    }
}


void selectionSort(int *Arr,int N){
    int iMin;
    for(int i=0;i<N;i++){
        iMin = i;
        for(int j=i+1;j<N;j++){
            if(Arr[j] < Arr[iMin]){
                iMin = j;
            }
        }
        if(i != iMin){
            swap(&Arr[i],&Arr[iMin]);
            printArr(Arr,N);
        }
    }
}


void insertionSort(int *Arr,int N){
    int j;
    for(int i=0;i<N;i++){
        j = i;
        while(j>0 && Arr[j] < Arr[j-1]){
            swap(&Arr[j],&Arr[j-1]);
            j--;
            printArr(Arr,N);
        }
    }
}


int merge(int *Arr,int left,int mid,int right){

    int i,j,k;
    int N1 = mid - left +1;
    int N2 = right - mid;
    int temp1[N1];
    int temp2[N2];

    for(i=0;i<N1;i++){
        temp1[i] = Arr[left + i];
    }
    for(j=0;j<N2;j++){
        temp2[j] = Arr[mid + 1 + j];
    }

    i = 0;
    j = 0;
    k = left;

    while(i<N1 && j<N2){
        if(temp1[i] <= temp2[j]){
            Arr[k] = temp1[i];
            i++;
            k++;
        }else{
            Arr[k] = temp2[j];
            j++;
            k++;
        }
    }

    printf("\nF   Array [%d]\n",global_INC);
    printArr(temp1,N1);
    printf("\nSS  Array [%d]\n",global_INC);
    printArr(temp2,N2);

    while(i<N1){
        Arr[k] = temp1[i];
        i++;
        k++;
    }
    while(j<N2){
        Arr[k] = temp2[j];
        j++;
        k++;
    }
    printf("\nTTT Array [%d]\n",global_INC);
    printArr(Arr,k);
    global_INC++;
    return 0;
}


int mergeSort(int *Arr,int l,int r){
    if(l<r){
        int mid = (l+r)/2;
        mergeSort(Arr,l,mid);
        mergeSort(Arr,mid+1,r);
        merge(Arr,l,mid,r);
    }
    return 0;
}


int sequentialSearch(int *Arr,int N,int key){
    for(int i=0;i<N;i++){
        if(Arr[i] == key){
            return printf("Found [%d] at index %d\n\n",Arr[i],i);
        }
    }
    return printf("Not Found [%d]\n\n",key);
}


int binarySearch(int *Arr,int N,int key){
    mergeSort(Arr,0,N);
    int low = 0;
    int high = N;
    int m;
    while(low<high){
        m = (low+high)/2;
        if(Arr[m] == key){
            return printf("Found [%d] at index %d\n\n",Arr[m],m);
        }   
        if(Arr[m] > key){
            high = m-1;
        }else{
            low = m+1;
        }
    }
    return printf("Not Found [%d]\n\n",key);
}


int jumpSearch(int *Arr,int size,int key){
    selectionSort(Arr,size);
    int start = 0;
    int jump = sqrt(size);
    
    while(Arr[jump] <= key && jump < size){
        printf("\nis [%d] [%d]\n",Arr[jump],key);
        start = jump;
        jump += sqrt(size);
        if(jump > size-1) jump = size;
    }
    for(int i = start;i<jump;i++){
        printf("\nis [%d] [%d]\n",Arr[i],key);
        if(Arr[i]==key)return printFound(Arr[i],i);
    }

    return notFound(key);
}





int main(){
    int num[] = {9,1,8,2,7,3,6,4,5};
    int num2[] = {9,8,7,6,5,4,3,2,1};
    int size = sizeof(num)/sizeof(num[0]);
    int size2 = sizeof(num2)/sizeof(num2[0]);
    printf("Original Array : \n");
    printArr(num,size);

    jumpSearch(num,size,5);
    
    printf("Last Sorted : \n");
    printArr(num,size);
    return 0;
}