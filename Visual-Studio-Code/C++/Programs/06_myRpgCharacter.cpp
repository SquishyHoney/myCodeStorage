#include <iostream>
#include <ctime>
typedef std::string string;

class Character{
    public:
        string name = "User5675";
        string weapon = "Long Sword";

    Character(string nama,string senjata){
        this->name = nama;
        this->weapon = senjata;

        std::cout << "Succesful on adding " << this->name << '\n';
    }
};

int main(){

    srand(time(NULL));

    int level = rand()%10;
    string name,weapon;
    string title,my_class;

    do{
        std::cout << "Create Your Character" << std::endl;
        std::cout << "Enter Name[10] : ";
        std::getline(std::cin,name);
    }while(name.empty());

    if(name.length() > 11){
        name.erase(11);
    }

    std::cout << "Enter Weapon : ";
    std::getline(std::cin,weapon);

    std::cout << "Enter Title : ";
    std::getline(std::cin,title);
    name.insert(0,title+" ");

    std::cout << "Enter Class : ";
    std::getline(std::cin,my_class);
    name.append(" "+my_class);

    Character my_Character(name,weapon);
    std::cout << "You are Level [" << level << "]";

    return 0;
}