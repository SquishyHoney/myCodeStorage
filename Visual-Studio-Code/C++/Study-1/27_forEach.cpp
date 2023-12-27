#include <iostream>

int main(){

    std::string names[] = {"Spongebob","Patrick","Squidward"};

    for(std::string name_selected : names){
        std::cout << name_selected << std::endl;
    }

    return 0;
}