#include <iostream>
#include <ctime>

using std::cout;
using std::cin;
using std::endl;

char getComputerChoice();
void showChoice(char choice);
void chooseWinner(char player, char computer);

int main(){

    char player;
    char computer;

    do{
        cout << "Rock - Papar - Scissor" << endl;
        cout << "Pick : r - p - s" << endl;
        cout << "Choose your choice : ";
        cin >> player;
    }while(player != 'r' && player != 'p' && player != 's');

    cout << "Player";
    showChoice(player);

    computer = getComputerChoice();
    cout << "Computer";
    showChoice(computer);

    chooseWinner(player,computer);

    return 0;
}

char getComputerChoice(){

    srand(time(0));

    int num = (rand()%3)+1;

    switch(num){
        case 1 : 
            return 'r';
        case 2 : 
            return 'p';
        case 3 : 
            return 's';
    }

    return 0;
}

void showChoice(char choice){
    
    switch(choice){
        case 'r' : 
            cout << " Choice [Rock]\n";
        break;
        case 'p' :
            cout << " Choice [Paper]\n";
        break;
        case 's' :
            cout << " Choice [Scissor]\n";
        break;
    }
}

void chooseWinner(char player, char computer){
    
    switch(computer){
        case 'r' : 
            switch(player){
                case 'r' :
                    cout << "[Player tie]" << endl;
                    break;
                case 'p' :
                    cout << "[Player Wins]" << endl;
                    break;
                case 's' :
                    cout << "[Player Lost]" << endl;
                    break;
            }
        break;

        case 'p' : 
            switch(player){
                case 'r' :
                    cout << "[Player Wins]" << endl;
                    break;
                case 'p' :
                    cout << "[Player tie]" << endl;
                    break;
                case 's' :
                    cout << "[Player Lost]" << endl;
                    break;
            }
        break;

        case 's' : 
            switch(player){
                case 'r' :
                    cout << "[Player Lost]" << endl;
                    break;
                case 'p' :
                    cout << "[Player Wins]" << endl;
                    break;
                case 's' :
                    cout << "[Player tie]" << endl;
                    break;
            }
        break;
    }
}
