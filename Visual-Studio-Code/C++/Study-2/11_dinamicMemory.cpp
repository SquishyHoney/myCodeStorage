#include <iostream>

int main(){

    int *number_ptr = NULL;
    number_ptr = new int;

    *number_ptr = 21;

    std::cout << number_ptr << std::endl;
    std::cout << *number_ptr << std::endl;

    delete(number_ptr);

    return 0;
}