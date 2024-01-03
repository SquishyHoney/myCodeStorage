#include <iostream>
#include <vector>

typedef std::string let_string;
typedef int number;
using decimals = double;

int main(){

    number year = 2023;
    decimals pie = 3.14;
    let_string sentence_one = "Hello there";
    std::string sentence_two = "This is C plus plus";

    std::cout << sentence_one << std::endl;
    std::cout << sentence_two << std::endl;
    std::cout << year << std::endl;
    std::cout << pie << std::endl;

    return 0;
}