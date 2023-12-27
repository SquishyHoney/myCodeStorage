#include <iostream>
#include <cmath>
//Namespace usage
//Typedef usage
//Get line

void sequentialSort(int array[],int size){
    for(int i=0; i<size ; i++){
        for(int j=0; j<size ; j++){
            if(std::min(array[i],array[j]) == array[i]){
                int temp = array[i];
                array[i] = array[j];
                array[j] = temp;
            }
        }
    }
}

int main(){

    int array[] = {99,22,55,44,33,11,88,77,66};
    int size = sizeof(array)/sizeof(array[0]);

    sequentialSort(array,size);
    for(int selected_number : array){
        std::cout << selected_number << " " ;
    }

    return 0;   
}
