#include <iostream>

double getTotal(double array[],int size){
    double total = 0;

    std::cout << array << std::endl;
    std::cout << sizeof(array[0]) << std::endl;

    for(int i=0 ; i<size ;i++){
        total += array[i];
    }

    return total;
}

int main(){

    double prices[] = {1.2, 3.4, 5.6};
    int size = sizeof(prices)/sizeof(prices[0]);

    double total = getTotal(prices,size);

    std::cout << "Total prices : $" << total << std::endl;

    return 0;
}   