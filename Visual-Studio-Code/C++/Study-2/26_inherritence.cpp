#include <iostream>

class Animal{
    public: 
        bool alive = true;

        void eat(){
            std::cout << "This animal is eating" << '\n';
        }

};

class Dog : public Animal{
    public:
        std::string name = "Unamed";

        void bark(){
            std::cout << this->name << " is barking" << '\n';
        }
};

class Cat : public Animal{
    public:
        void meow(){
            std::cout << "The cat goes meow" << '\n';
        }
};

int main(){

    Cat cat;
    Dog dog;
    dog.name = "Molly";

    std::cout << dog.alive << '\n';
    dog.eat();
    dog.bark();

    cat.meow();

    

    return 0;
}