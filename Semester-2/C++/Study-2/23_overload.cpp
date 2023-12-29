#include <iostream>

class Pizza{
    public:
        std::string topping1;
        std::string location;

    Pizza(){
        
    }
    
    Pizza(std::string isi){
        this->topping1 = isi;
    }

    Pizza(std::string isi,std::string tempat){
        this->topping1 = isi;
        this->location = tempat;
    }
};

int main(){

    Pizza pizza1("Pepperoni","Pizza Hut");
    Pizza pizza2("Cheese");

    std::cout << pizza1.topping1 << "\n";
    std::cout << pizza1.location << "\n";

    std::cout << pizza2.topping1 << "\n";
    std::cout << pizza2.location << "\n";

    return 0;
}