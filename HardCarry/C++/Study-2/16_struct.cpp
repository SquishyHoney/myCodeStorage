#include <iostream>

struct students{
    std::string name;
    int age;
    bool enroled = true;
};

int main(){

    students student1;
    students student2;

    student1.name = "Mr Code";
    student1.age = 21;

    student2.name = "Miss Code";
    student2.age = 22;

    std::cout << student1.name << std::endl;
    std::cout << student1.age << std::endl;
    std::cout << student1.enroled << std::endl;

    std::cout << student2.name << std::endl;
    std::cout << student2.age << std::endl;
    std::cout << student2.enroled << std::endl;

    return 0;
}