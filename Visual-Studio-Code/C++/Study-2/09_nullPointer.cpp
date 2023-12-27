#include <iostream>

int main(){

    int *pointer = nullptr;
    int x = 123;

    //pointer = &x;

    if(pointer == nullptr){
        std::cout << &pointer << std::endl;
        std::cout << "Unsuccesfull" << std::endl;
    }else{
        std::cout << &pointer << std::endl;
        std::cout << "Assigned" << std::endl;
    }

    return 0;
}