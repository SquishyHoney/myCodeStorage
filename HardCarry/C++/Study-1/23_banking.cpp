#include <iostream>
using std::cout;
using std::cin;
using std::endl;

//manopip
//31/60

double showBalance(double temp){

    cout << "Accout balance is " << temp << endl;

    return 0;
}

double takeMoney(double temp){
    double money;
    cout << "How much [TAKE] : ";
    cin >> money;
    temp -= money;

    return temp;
}

double depositMoney(double temp){
    double money;
    cout << "How much [GIVE] : ";
    cin >> money;
    temp += money;

    return temp;
}


int main(){

    double bank_balance = 0;
    int switch_num;

    bool indicator = true;

    while(indicator){
        cout << "1. Show Balance\n";
        cout << "2. Add to Account\n";
        cout << "3. Take Money\n";
        cout << "4. Exit\n";
        cout << "Enter Option : ";
        cin >> switch_num;

    switch(switch_num){
        case 1:
            showBalance(bank_balance);
            break;
        case 2:
            bank_balance = depositMoney(bank_balance);
            break;
        case 3:
            bank_balance = takeMoney(bank_balance);
            break;
        case 4:
            indicator = false;
            break;
        default :
            cout << "Please Enter Valid Option\n";
    }
    }

    return 0;
}