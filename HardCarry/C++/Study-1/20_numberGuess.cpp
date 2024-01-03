#include <iostream>
#include <cmath>

int main(){

    using std::cout;
    using std::cin;

    int my_number;

    srand(time(0));
    int random_number = (rand()%10) + 1;

    do{
        cout << "Cocokin : ";
        cin >> my_number;
        
        if(my_number != random_number){
            cout << "Masih Salah\n";
        }else{
            cout << "you're good!";
        }

    }while(my_number != random_number);

    return 0;
}