#include <iostream>
using namespace std;

int main(){

    string name;
    cout << "Enter your name : ";
    getline(cin,name);

    cout << "Panjang name : " << name.length() << endl;

    name.insert(0,"Mr.");
    
    int replace = name.find(' ');
    name.erase(7);

    name.append(" The Great");

    if(name.empty()){
        cout << "You didn't enter your name";
    }else{
        int i;
        for(i = 0; i<name.length() ; i++){
            cout << "[" << name.at(i) << "]";
        }
    }

    name.clear();


    return 0;
}