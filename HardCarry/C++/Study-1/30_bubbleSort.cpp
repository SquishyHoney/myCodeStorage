#include <iostream>

int bubbleSort(int array[],int size){

    for(int i=0 ; i<size ; i++){
        for(int j=0 ; j<size-1 ; j++ ){
            if(array[j] > array[j+1]){
                int temp = array[j];
                array[j] = array[j+1];
                array[j+1] = temp;

                for(int k=0; k<size ; k++){
                    std::cout << array[k] << " ";
                }std::cout << std::endl;
            }
        }
    }

    return 0;
}

int main(){

    int num[] = {2,8,9,1,10,3,7,4,6};
    int size = sizeof(num)/sizeof(num[0]);

    bubbleSort(num,size);

    for(int selected : num){
        std::cout << selected << " " << std::endl;
    }
    
    return 0;
}