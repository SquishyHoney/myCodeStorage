#include <iostream>

int main(){

    for(int i=5;i>0;i--){

        for(int j=i;j>0;j--){

            std::cout << "*";

        }
        
        std::cout << std::endl;
    }

    return 0;
}