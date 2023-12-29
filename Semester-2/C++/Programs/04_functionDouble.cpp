#include <iostream>
#include <cmath>

double luas(double rusuk);
double luas(double panjang, double tinggi);

int main(){

    std::cout << luas(3.3) << std::endl;
    std::cout << luas(3.1,4.1) << std::endl;

    return 0;
}

double luas(double rusuk){
    std::cout << "Menghitung luas persegi" << std::endl;

    rusuk = pow(rusuk,2);
    rusuk = round(rusuk);

    return rusuk;
}

double luas(double panjang,double tinggi){

    std::cout << "Menghitung luas persegi panjang" << std::endl;

    double hasil = panjang * tinggi;
    hasil = round(hasil);

    return hasil;
}