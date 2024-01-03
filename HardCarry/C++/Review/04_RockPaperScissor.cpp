#include <iostream>
#include <ctime>
#include <cstring>

int won = 0;
int lose = 0;
int tie = 0;

char getComputerChoice(){
    srand(time(NULL));

    int switch_case = (rand()%3)+1;

    switch(switch_case){
        case 1 :
            return 'R';
        case 2 :
            return 'P';
        case 3 :
            return 'S';

        default :
            return 'R';
    }

}

void fightTime(char pc_choice,char my_choice){

    std::cout << "Computer picked " << "[" << pc_choice <<"]" << std::endl;

    if(my_choice == 'R'){

        switch(pc_choice){

            case 'R':
                std::cout << "[It's a tie]" << std::endl;
                tie++;
                return;

            case 'P':
                std::cout << "[You Lost]" << std::endl;
                lose++;
                return;

            case 'S':
                std::cout << "[You Won]" << std::endl;
                won++;
                return;
        }
    }

    if(my_choice == 'P'){

        switch(pc_choice){

            case 'P':
                std::cout << "[It's a tie]" << std::endl;
                tie++;
                return;

            case 'S':
                std::cout << "[You Lost]" << std::endl;
                lose++;
                return;

            case 'R':
                std::cout << "[You Won]" << std::endl;
                won++;
                return;
        }
    }

    if(my_choice == 'S'){

        switch(pc_choice){

            case 'S':
                std::cout << "[It's a tie]" << std::endl;
                tie++;
                return;

            case 'R':
                std::cout << "[You Lost]" << std::endl;
                lose++;
                return;

            case 'P':
                std::cout << "[You Won]" << std::endl;
                won++;
                return;
        }
    }


    return;
}

int main(){

    srand(time(NULL));
    std::string my_choice;
    std::string pc_choice;
    
    int fight_time = 3;

    for(int i=0 ; i<fight_time ; i++){

        do{
            std::cout << "Enter [R-P-S] : ";
            std::getline(std::cin,my_choice);
        }while(my_choice != "R" && my_choice != "P" && my_choice != "S");
        fightTime(getComputerChoice(),my_choice[0]);
    }

    std::cout << "[STATS]\n";
    std::cout << "You won [" << won << "]" << std::endl;
    std::cout << "You lost [" << lose << "]" << std::endl;
    std::cout << "You tied [" << tie << "]" << std::endl;

    return 0;
}