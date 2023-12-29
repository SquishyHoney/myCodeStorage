#include <iostream>

void swap(std::string &one, std::string &two){

    std::cout << "Memory x : " << &one << std::endl;
    std::cout << "Memory x : " << &two << std::endl;

    std::string temp = one;
    one = two;
    two = temp;
}

int main(){

    std::string x = "Second";
    std::string y = "First";

    std::cout << "Memory x : " << &x << std::endl;
    std::cout << "Memory x : " << &y << std::endl;

    swap(x,y);

    std::cout << x << std::endl;
    std::cout << y << std::endl;

    return 0;
}