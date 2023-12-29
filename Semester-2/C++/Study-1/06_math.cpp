#include <iostream>
#include <cmath>
using std::endl;

int main(){

    int negative_number = -90;
    int positive_number = abs(negative_number);
    std::cout << positive_number << " ";

    double car = 300;
    double motor = 90;
    double gas;
    double cheap;
    gas = std::max(car,motor);
    cheap = std::min(car,motor);
    std::cout << gas << " " << cheap << endl;


    double radius = 7;
    double PI = 3.14;
    double luas_lingkaran;
    luas_lingkaran = pow(radius,2) * PI;
    luas_lingkaran = round(luas_lingkaran);
    //ceil & floor
    std::cout << "Luas lingkaran : " << luas_lingkaran << endl;


    int luas_persegi = 9;
    double rusuk = sqrt(luas_persegi);
    std::cout << "Rusuk persegi : " << rusuk << endl;


    return 0;
}