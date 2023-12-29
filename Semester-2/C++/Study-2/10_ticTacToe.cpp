#include <iostream>
#include <ctime>

void drawBoard(char *spaces);
void playerMove(char *spaces, char player);
void computerMove(char *spaces,char computer);
bool checkWinner(char *spaces, char player, char computer);
bool checkTie(char *spaces);

int main(){

    char array[9] = {
        ' ', ' ', ' ',
        ' ', ' ', ' ',
        ' ', ' ', ' '
    };

    char player = 'X';
    char computer = 'O';

    bool running = true;

    drawBoard(array);

    while(running){
        playerMove(array, player);
        drawBoard(array);

        if(checkWinner(array,player,computer)){
            running = false;
            break;
        }else if(checkTie(array)){
            running = false;
            break;
        }

        computerMove(array, computer);
        drawBoard(array);

        if(checkWinner(array,player,computer)){
            running = false;
            break;
        }else if(checkTie(array)){
            running = false;
            break;
        }

    }

    std::cout << " ...Thanks for playing\n";
    return 0;
}

void drawBoard(char *spaces){
    std::cout << std::endl;
    std::cout << "     |     |     " << std::endl;
    std::cout << "  " << spaces[0] << "  |  " << spaces[1] << "  |  " << spaces[2] << "  " << std::endl;
    std::cout << "_____|_____|_____" << std::endl;
    std::cout << "     |     |     " << std::endl;
    std::cout << "  " << spaces[3] << "  |  " << spaces[4] << "  |  " << spaces[5] << "  " << std::endl;
    std::cout << "_____|_____|_____" << std::endl;
    std::cout << "     |     |     " << std::endl;
    std::cout << "  " << spaces[6] << "  |  " << spaces[7] << "  |  " << spaces[8] << "  " << std::endl;
    std::cout << "     |     |     " << std::endl;
    std::cout << std::endl;
}

void playerMove(char *spaces, char player){
    int picked_number;
    do{
        std::cout << "Enter a spot to place a marker [1-9] : ";
        std::cin >> picked_number;
        picked_number--;

        if(spaces[picked_number] == ' '){
            spaces[picked_number] = player;
            break;
        }

    }while(!(picked_number < 0 && picked_number > 8));
}

void computerMove(char *spaces, char computer){
    int number;

    srand(time(NULL));

    while(true){
        number = rand()%9;
        if(spaces[number] == ' '){
            spaces[number] = computer;
            std::cout << "Computer picked : " << number << std::endl;
            break;
        }
    }

}

bool checkWinner(char *spaces, char player, char computer){

    if(spaces[0] != ' ' && spaces[0] == spaces[1] && spaces[1] == spaces[2]){
        (spaces[0] == player)? std::cout << "[Player Won]" : std::cout << "[Computer Won]";
    }else if(spaces[3] != ' ' && spaces[3] == spaces[4] && spaces[4] == spaces[5]){
        (spaces[3] == player)? std::cout << "[Player Won]" : std::cout << "[Computer Won]";
    }else if(spaces[6] != ' ' && spaces[6] == spaces[7] && spaces[7] == spaces[8]){
        (spaces[6] == player)? std::cout << "[Player Won]" : std::cout << "[Computer Won]";
    }else if(spaces[0] != ' ' && spaces[0] == spaces[3] && spaces[3] == spaces[6]){
        (spaces[0] == player)? std::cout << "[Player Won]" : std::cout << "[Computer Won]";
    }else if(spaces[1] != ' ' && spaces[1] == spaces[4] && spaces[4] == spaces[7]){
        (spaces[1] == player)? std::cout << "[Player Won]" : std::cout << "[Computer Won]";
    }else if(spaces[2] != ' ' && spaces[2] == spaces[5] && spaces[5] == spaces[8]){
        (spaces[2] == player)? std::cout << "[Player Won]" : std::cout << "[Computer Won]";
    }else if(spaces[0] != ' ' && spaces[0] == spaces[4] && spaces[4] == spaces[8]){
        (spaces[0] == player)? std::cout << "[Player Won]" : std::cout << "[Computer Won]";
    }else if(spaces[2] != ' ' && spaces[2] == spaces[4] && spaces[4] == spaces[6]){
        (spaces[2] == player)? std::cout << "[Player Won]" : std::cout << "[Computer Won]";
    }else{
        return false;
    }

    return true;
}

bool checkTie(char *spaces){

    for(int i=0 ; i<9 ; i++){
        if(spaces[i] == ' '){
            return false;
        }
    }

    std::cout << "[It's a tie!!]";
    return true;
}