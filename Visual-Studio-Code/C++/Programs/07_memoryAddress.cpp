#include <iostream>

//FILL arrays

int switch_names(std::string &one,std::string &two){

    std::string temp = one;
    one = two;
    two = temp;

    return 0;
}

int main(){

    const int size = 9;
    std::string array[size];

    fill(array,array+3,"HELLO");
    fill(array+3,array+9,"Bye");

    for(std::string selected_items : array){
        std::cout << "[" << selected_items << "]" << std::endl;
    }

    std::cout << "Memory Adresses" << std::endl;

    int number = 10;
    int *number_ptr = &number;
    int *selected = number_ptr;

    std::cout << "number  : " << number  << '\n';
    std::cout << "&number : " << &number  << '\n';

    std::cout << "number_ptr  : " << number_ptr  << '\n';
    std::cout << "*number_ptr : " << *number_ptr  << '\n';
    std::cout << "&number_ptr : " << &number_ptr  << '\n';

    std::cout << "selected  : " << selected << '\n';
    std::cout << "*selected : " << *selected << '\n';
    std::cout << "&selected : " << &selected  << '\n';

    std::string names[] = {"John","Doe"};

    std::cout << names[0] << std::endl;
    std::cout << names[1] << std::endl;

    switch_names(names[0],names[1]);

    std::cout << names[0] << std::endl;
    std::cout << names[1] << std::endl;

    return 0;
}