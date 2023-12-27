#include <iostream>
using std::endl;

int main(){

    std::string name;
    std::cout << "What is your name : ";

    std::getline(std::cin >> std::ws,name);
    std::cout << "Welcome " << name << endl;
    

    std::string full_name;
    std::cout << "Enter your full name : ";
    std::getline(std::cin,full_name);

    int age;
    std::cout << "What is your age : ";
    std::cin >> age;

    std::cout << "It looks like " << full_name << " is " << age << " years old"; 

    return 0;   
}