#include <iostream>

int main(){

    std::string name = "Bro";
    std::string *name_ptr = &name;
    int age = 21;
    int *age_ptr = &age;
    
    std::string free_pizza[5] = {
        "Pizza 1",
        "Pizza 2",
        "Pizza 3",
        "Pizza 4",
        "Pizza 5",
    };

    std::cout << &name << std::endl;
    std::cout << name_ptr << std::endl;

    //* isi pointer
    //  address yang di tunjuk
    //& address dia

    std::cout << &age<< std::endl;
    std::cout << age_ptr << std::endl;

    std::cout << free_pizza << std::endl;
    std::cout << &free_pizza[0] << std::endl;

    return 0;
}