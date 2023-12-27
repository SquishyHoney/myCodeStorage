#include <iostream>

int main(){

    int array_num[] = {1,2,3,4,5,6,7,8,9};
    int size = sizeof(array_num)/sizeof(array_num[0]);

    for(int i=0 ; i<size ; i++){
    
        ((i+1) == size)? 
        std::cout << array_num[i] << std::endl : 
        std::cout << array_num[i] << "-";
    
    }



    int array_of_numbers[] = {12,12,12};
    std::string array_of_strings[] = {"96","96","96"};

    int normal_number = 4;
    double decimal_number = 8.0;
    char letter = 'A';
    std::string sentence = "32";

    int sizes[] = {
        sizeof(array_of_numbers),
        sizeof(array_of_strings),
        sizeof(normal_number),
        sizeof(decimal_number),
        sizeof(letter),
        sizeof(sentence)
    };

    for(int selected : sizes){
        std::cout << selected << std::endl;
    }

    return 0;
}