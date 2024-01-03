#include <iostream>
using namespace std;

int main(){

    char switch_num;
    cout << "Which Movie Do you like\n";
    cout << "A. Barbie" << endl ;
    cout << "B. Oppenheimer\n";
    cout << "C. Mission Imposible\n";
    cout << "D. Other\n";
    cout << "Please Enter your Option : ";

    cin >> switch_num;

    switch(switch_num){
        case 'A':
            cout << "you like feminism kys";
            break;
        case 'B':
            cout << "Best Choice ";
            break;
        case 'C':
            cout << "You are not trendy";
            break;
        case 'D':
            cout << "You are living under a rock";
            break;
        default : 
            cout << "Not a valid Option";
    }

    return 0;
}