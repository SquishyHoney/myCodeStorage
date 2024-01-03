#include <iostream>

int main(){

    const int size = 9; 
    std::string foods[size];

    fill(foods, foods+size/3, "Pizza");
    fill(foods+size/3, foods+size*2/3, "Hamburger");
    fill(foods+size*2/3, foods+size , "Sushi");

    for(std::string food : foods){
        std::cout << food << std::endl;
    }

    return 0;
}