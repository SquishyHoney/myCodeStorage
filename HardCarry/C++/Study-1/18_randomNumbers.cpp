#include <iostream>
#include <ctime>

int main(){

    srand(time(NULL));

    double number = rand()%10;
    
    std::cout << number;

    return 0;
}