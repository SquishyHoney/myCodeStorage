#include <iostream>

// 5! = (5) * (5-1) * (5-2) * (5-3)* (5-4)

int findFactorial(int number,int sum){

    if(number > 1){
        sum *= number;
        return findFactorial(number-1,sum);
    }

    return sum;
}

int main(){

    int number;
    int sum = 1;

    std::cout << "Enter a number : ";
    std::cin >> number;

    std::cout << number << "! = " << findFactorial(number,sum); 

    return 0;
}