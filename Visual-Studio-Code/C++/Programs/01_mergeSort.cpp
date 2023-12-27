#include <iostream>

int merge(int array[],int left,int mid,int right);
int mergeSort(int array[],int left,int right);

int main(){

    int number[] = {74,52,13,85,56,31,24,98,47};
    int size = sizeof(number)/sizeof(number[0]);

    mergeSort(number, 0, size - 1);

    for(int selected_number : number){
        std::cout << "[" << selected_number << "] ";
    }

    return 0;
}


int merge(int array[],int left,int mid,int right){

    int size_1 = mid-left+1; // +1
    int size_2 = right-mid;

    int *array_1 = new int[size_1];
    int *array_2 = new int[size_2];

    int i,j,k;
    i = j = 0;
    
    for(i=0 ; i<size_1 ; i++){
        array_1[i] = array[left + i];
    }

    for(j=0 ; j<size_2 ; j++){
        array_2[j] = array[mid + j + 1];// +1
    }

    i = j = 0;
    k = left;

    while(j<size_2 && i<size_1){
        if(array_1[i] <= array_2[j]){
            array[k] = array_1[i];
            i++;
        }else{
            array[k] = array_2[j];
            j++;
        }
        std::cout << array[k] << std::endl;
        k++;
    }

    while(i<size_1){
        array[k] = array_1[i];
        i++;
        k++;
    }

    while(j<size_2){
        array[k] = array_2[j];
        j++;
        k++;
    }

    delete[] array_1;
    delete[] array_2;

    return 0;
}

int mergeSort(int array[],int left,int right){
    if(left<right){
        int mid = left + (right - left) / 2; //
        mergeSort(array,left,mid);
        mergeSort(array,mid+1,right);
        merge(array,left,mid,right);
    }
    
    return 0;
}


