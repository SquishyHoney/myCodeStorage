#include <iostream>

int main(){

    int year = 2022;
    int college_years = 3;

    college_years++;

    int end_class = year + college_years;

    std::cout << "Finish College at " << end_class << std::endl;



    int pizza_slices = 10;
    int person = 3;

    double fair = pizza_slices % person;
    std::cout << "Sisah " << fair << " slices" << std::endl;

    return 0;
}