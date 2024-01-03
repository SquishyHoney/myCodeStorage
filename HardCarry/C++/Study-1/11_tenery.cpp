#include <iostream>

int main(){

    int number = 60;

    (number > 100)? std::cout<<"less than 100\n" : std::cout<<"More than 100\n";
    
    bool boolean = false;
    (boolean)? std::cout << "True\n" : std::cout << "False\n";

    !(1)? std::cout << "True\n" : std::cout << "False\n";

    return 0;
}