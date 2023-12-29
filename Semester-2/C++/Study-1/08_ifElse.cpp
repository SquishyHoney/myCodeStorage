#include <iostream>
using namespace std;

int main(){

    int age;
    cout << "Enter your age : ";
    cin >> age;

    if(age > 18){
        cout << "You can drink";
    }else if(age == 18){
        cout << "You are 18 years old ";
    }else{
        cout << "[Can't enter you're still a kid]";
    }

    return 0;   
}