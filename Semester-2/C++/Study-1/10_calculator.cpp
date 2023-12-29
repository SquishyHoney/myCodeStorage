#include <iostream>

using namespace std;

int main(){

    char switch_char;
    double first_number;
    double second_number;

    cout << "Enter First Number : ";
    cin >> first_number;

    cout << "Enter Second Number : ";
    cin >> second_number;

    cout << "What Operand[+,-,*,x,:] : ";
    cin >> switch_char;

    switch(switch_char){
        case '+':
            cout << "Result is " << first_number + second_number;
            break;

        case '-':
        cout << "Result is " << first_number - second_number;
            break;

        case '*':
        cout << "Result is " << first_number * second_number;
            break;

        case 'x':
        cout << "Result is " << first_number * second_number;
            break;

        case ':':
        cout << "Result is " << first_number / second_number;
            break;

        default:
            cout << "Not a valid Option";
            break;
    }

    return 0;
}