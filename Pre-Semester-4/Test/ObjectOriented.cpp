#include <iostream>

class Animal {
public:
    Animal(const std::string& name) : name(name) {}
    virtual void speak() const {
        std::cout << "Animal speaks." << std::endl;
    }

private:
    std::string name;
};

class Dog : public Animal {
public:
    Dog(const std::string& name) : Animal(name) {}
    void speak() const override {
        std::cout << "Dog barks." << std::endl;
    }
};

class Cat : public Animal {
public:
    Cat(const std::string& name) : Animal(name) {}
    void speak() const override {
        std::cout << "Cat meows." << std::endl;
    }
};

class Shape {
public:
    virtual void draw() const {
        std::cout << "Drawing a shape." << std::endl;
    }
};

class Circle : public Shape {
public:
    void draw() const override {
        std::cout << "Drawing a circle." << std::endl;
    }
};

class Square : public Shape {
public:
    void draw() const override {
        std::cout << "Drawing a square." << std::endl;
    }
};

int main() {
    Animal animal("Generic Animal");
    Dog dog("Buddy");
    Cat cat("Whiskers");

    Shape shape;
    Circle circle;
    Square square;

    animal.speak();
    dog.speak();
    cat.speak();

    shape.draw();
    circle.draw();
    square.draw();

    return 0;
}

