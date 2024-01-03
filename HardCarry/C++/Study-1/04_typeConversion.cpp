#include <iostream>

int main(){

    int PI = 3.14;
    int ASCII_A_int = 'A';
    char ASCII_A_char = 65;
    double new_number = (int) 5.12312313;

    std::cout << "PI IS " << PI << std::endl;
    std::cout << "TypeConverted " << new_number << std::endl;
    std::cout << "A ASCII number is : " << ASCII_A_int << std::endl;
    std::cout << "65 in ASCII table is : " << ASCII_A_char << std::endl;

    return 0;
}