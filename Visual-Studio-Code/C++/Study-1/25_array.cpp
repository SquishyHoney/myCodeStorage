#include <iostream>

int main(){

    std::string cars[] = {"Corvette","Honda","Bugatti"};
    std::cout << "Array : " << cars << std::endl;

    cars[1] = "Porsche";

    for(std::string selected_car : cars){
        std::cout << selected_car << std::endl;
    }

    return 0;
}