#include <iostream>

int getDigit(const int number){
    return number%10 + (number/10%10);
}

int sumOddDigits(const std::string card_number){

    int sum = 0;
    
    for(int i=card_number.size()-1 ; i>=0 ; i-=2){
        sum+=getDigit((card_number[i]-'0'));
    } 

    return sum;
}

int sumEvenDigits(const std::string card_number){

    int sum = 0;
    
    for(int i=card_number.size()-2 ; i>=0 ; i-=2){
        sum+=getDigit((card_number[i]-'0')*2);
    } 

    return sum;
}

int main(){

    std::string card_number;
    int result = 0;

    std::cout << "Enter a card #: ";
    std::cin >> card_number;

    result = sumOddDigits(card_number) + sumEvenDigits(card_number);

    if(result%10 == 0){
        std::cout << "Valid credit card Number";
    }else{
        std::cout << "Invalid credit card Number";
    }

    return 0;
}