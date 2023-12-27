#include <iostream>

int main(){

    int k1;
    int k2;
    int k3;

    std::string shopping_list[9];
    fill(shopping_list,shopping_list+3,"Hamburger");
    fill(shopping_list+3,shopping_list+6,"Pizza");
    fill(shopping_list+6,shopping_list+9,"Sushi");

    for(std::string selected_item : shopping_list){
        std::cout << "[" << selected_item << "]" << std::endl;
    }

    return 0;
}