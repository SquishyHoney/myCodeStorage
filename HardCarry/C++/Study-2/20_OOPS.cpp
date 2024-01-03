#include <iostream>

class Human{
    public:
        std::string name = "Default";
        int age = 0;

        void walk(){
            std::cout << "WALK WALK WALK" << std::endl;
        }

        void eat(){
            std::cout << "This person is eating" << std::endl;
        }
};



int main(){

    Human human_1;

    human_1.name = "Rick";
    human_1.age = 70;

    std::cout << human_1.name << std::endl;
    std::cout << human_1.age << std::endl;

    human_1.eat();
    human_1.walk();



    Human human_2;

    human_2.name = "Morty";
    human_2.age = 15;

    std::cout << human_2.name << std::endl;
    std::cout << human_2.age << std::endl;

    human_2.eat();
    human_2.walk();



    Human human_3;

    std::cout << human_3.name << std::endl;
    std::cout << human_3.age << std::endl;

    human_3.eat();
    human_3.walk();

    return 0;
}