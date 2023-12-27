#include <iostream>
#include <cmath>


std::string kalimat = "Risa";

void helloWorld(){
    std::cout << "Hello " << kalimat << std::endl;
}

int helloWorld2(){
    std::cout << "Halo " << kalimat << std::endl;

    return 0;
}

int whatNumber(){
    int number = 9;
    return number;
}

std::string gabunin(std::string one,std::string two){
    return one + " " + two;
}

int main(){

    helloWorld();
    helloWorld2();

    std::string new_name = gabunin("Barbie","Millicent");

    int new_number = whatNumber();
    std::cout << new_number << std::endl;
    std::cout << new_name;
    return 0;
}