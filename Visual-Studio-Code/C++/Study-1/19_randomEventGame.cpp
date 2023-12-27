#include <iostream>
#include <cmath>

int main(){

    srand(time(0));

    int random_number = (rand()%3) + 1;

    switch(random_number){
        case 1 :
            std::cout << "Car";
            break;
        case 2 :
            std::cout << "Skyscrapper";
            break;
        case 3 :
            std::cout << "Games";
            break;
    }

    return 0;
}