#include <iostream>
#include <cmath>

class Shape{
    public:
        double Area;
        double Volume;
};

class Cube : public Shape{
    public:
        double side;

    Cube(double side){
        this->side = side;
        this->Area = side*side*6;
        this->Volume = pow(side,3);
    }
};

class Sphere : public Shape{
    public:
        double radius;

    Sphere(double radius){
        this->radius = radius;
        this->Area = 4 * pow(radius,2) * 3.14159;
        this->Volume = 4/3.0 * pow(radius,3) * 3.14159;
    }
};

int main(){

    Cube cube(10);
    Sphere sphere(5);

    std::cout << cube.Area << std::endl;
    std::cout << cube.Volume << std::endl;

    std::cout << sphere.Area << std::endl;
    std::cout << sphere.Volume << std::endl;

    return 0;
}