#include <iostream>

int main(){

    int number = 0;

    while(true){

        number++;

        if(number == 13){
            continue;
        }

        std::cout << number << " ";
        

        if(number > 20){ 
            break;
        }
    }

    return 0;
}