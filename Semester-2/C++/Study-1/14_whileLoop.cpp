#include <iostream>
using namespace std;

int main(){

    int number = 0;

    while(true){

        cout << number << " ";
        number++;

        if(number > 10) break;
    }
    cout << endl;
    

    while(false){
        cout << "This will not apear";
    }

    do{
        cout << "This will apear\n";
    }while(false);

    return 0;
}