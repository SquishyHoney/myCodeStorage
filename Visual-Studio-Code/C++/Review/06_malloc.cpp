#include <iostream>

int main(){

    std::string *list;
    int size;

    std::cout << "Berapa isi array : ";
    std::cin >> size;
    std::cin.ignore();   

    list = new std::string[size];

    for(int i=0 ; i<size ; i++){
        std::cout << "Enter #" << i+1 << " : ";
        std::getline(std::cin,list[i]);
     }

     for(int i=0 ; i<size ; i++){
        std::cout << "[" << list[i] << "]\n";
     }

    delete[] list;

    return 0;
}