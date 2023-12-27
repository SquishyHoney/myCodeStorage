#include <iostream>

int sequentialSearch(int array[],int size,int key){

    using std::cout;

    for(int i=0 ; i<size ; i++){
        if(array[i] == key){
            std::cout << "Found " << key << " in "
            << "index " << i << std::endl;

            return 0;
        }
    }

    std::cout << "Could not find " << key << " in array" << std::endl;
    return 0;
}

int main(){

    int num[] = {1,2,3,4,5,6,7,8,9};
    int size = sizeof(num)/sizeof(num[0]);
    int key = 41;

    sequentialSearch(num,size,key);

    return 0;
}