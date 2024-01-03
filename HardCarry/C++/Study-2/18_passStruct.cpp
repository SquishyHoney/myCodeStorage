#include <iostream>

struct cars{
    std::string name;
    int year;
    std::string color;
};

void displayCar(cars &temp);
void paintCar(cars &temp, std::string color);

int main(){

    cars car1;
    cars car2;

    car1.name = "Divo";
    car1.year = 2018;
    car1.color = "Blue";

    car2.name = "F80";
    car2.year = 2014;
    car2.color = "Red";

    paintCar(car2,"Silver");

    std::cout << "Memory address : " << &car1 << std::endl;
    displayCar(car1);

    std::cout << "Memory address : " <<&car2 << std::endl;
    displayCar(car2);

    return 0;
}

void displayCar(cars &temp){
    std::cout << &temp << std::endl;
    std::cout << "[YEAR " << temp.year << "]" << std::endl;
    std::cout << "Car Name : " << temp.color << "[" << temp.name << "]" << std::endl;
}

void paintCar(cars &temp, std::string color){
    temp.color = color;
}
