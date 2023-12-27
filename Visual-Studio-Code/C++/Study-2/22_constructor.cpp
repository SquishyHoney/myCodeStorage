#include <iostream>

class Cars{

    public:
        std::string name;
        std::string color;
        int year;

    Cars(std::string name,std::string color,int year){
        this->name = name;
        this->color = color;
        this->year = year;
    }

};

int main(){

    Cars car_1("Mustang","Red",1987);
    Cars car_2("Corvette","Blue",2001);

    std::cout << "------------" << std::endl;
    std::cout << car_1.name << std::endl;
    std::cout << car_1.color << std::endl;
    std::cout << car_1.year << std::endl;
    std::cout << "------------" << std::endl;
    std::cout << car_2.name << std::endl;
    std::cout << car_2.color << std::endl;
    std::cout << car_2.year << std::endl;
    std::cout << "------------" << std::endl;

    return 0;
}