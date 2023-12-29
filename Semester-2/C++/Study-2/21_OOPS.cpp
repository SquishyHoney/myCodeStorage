#include <iostream>

class Cars{
    public:
        std::string model = "[Default]";
        std::string color = "[Default]";
        int year;

        void acc(){
            std::cout << "You are accelerating";
        }
};

int main(){

    Cars car_1;
    car_1.model = "Mustang";
    car_1.color = "Red";
    car_1.year = 2014;

    std::cout << car_1.model << std::endl;
    std::cout << car_1.color << std::endl;
    std::cout << car_1.year << std::endl;

    car_1.acc();

    return 0;
}