#include <iostream>

int main(){

    char *grades_ptr = NULL;
    int size;

    std::cout << "How many grades : ";
    std::cin >> size;

    grades_ptr = new char[size];

    for(int i=0 ; i<size ; i++){
        std::cout << "Nilai #" << i+1 << ": ";
        std::cin >> grades_ptr[i];
    }  

    for(int i=0 ; i<size ; i++){
        std::cout << "#" << i+1 << "." << grades_ptr[i] << std::endl;
    }

    delete[] grades_ptr;

    return 0;
}