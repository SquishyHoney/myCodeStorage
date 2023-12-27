#include <iostream>

void printInfo(const std::string &name,const int &age){

    /*
    EROR
    
    name = " ";
    age = 0;

    */
    
    std::cout << name << std::endl;
    std::cout << age << std::endl;
}

int main(){

    std::string name = "Bro Code";
    int age = 21;

    printInfo(name,age);

    return 0;
}