#include <iostream>
#include <cmath>

using namespace std;

int main(){

    cout << "Pythagorean Theorem\n";
    double base;
    double heigth;

    cout << "Enter Heigth : ";
    cin >> heigth;

    cout << "Enter Base : ";
    cin >> base;

    double answer;
    answer = round(sqrt(pow(heigth,2)+pow(base,2)));
    cout << "The answer is " << answer;

    return 0;
}