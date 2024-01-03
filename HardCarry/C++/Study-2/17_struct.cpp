#include <iostream>

struct students{
    std::string name;
    int age;
};

int main(){

    students male[3] = {
        {"One" , 11},
        {"Two" , 22},
        {"Three", 33}
    };

    int size = sizeof(male)/sizeof(male[0]);

    for(int i=0 ; i<size ; i++){
        std::cout << male[i].name << std::endl;
        std::cout << male[i].age << std::endl;
    }

    return 0;
}