#include <iostream>

class Rpg_Char{

    private:
        int level = 0;

    public:
        std::string name;
        std::string role;

        bool alive;

        void showStatus(){
            std::cout << "Name : " << this->name << std::endl;
            std::cout << "Role : " << this->role << std::endl;
        }
};


namespace Np_Knight{
    int str = 10;
    int dex = 7.5;  
    int intl = 7;
}

namespace Np_Barbarian{
    int str = 17;
    int dex = 4;
    int intl = 3;
}

namespace Np_Mage{
    int str = 3;
    int dex = 4;
    int intl = 17;
}


class Knight : public Rpg_Char{
    public:
        //CAN'T USE NAMESPACE HERE;
        std::string sword = "Normal Sword";
        std::string country = "Kingdom of Rohan";

        int str = Np_Knight::str;
        int dex = Np_Knight::dex;
        int intl = Np_Knight::intl;

        Knight(std::string nama,std::string role){
            this->name = nama;
            this->role = role;

            std::cout << "Created New Knight Character [No Sword]" << std::endl;
        }

        Knight(std::string nama,std::string role,std::string pedang,std::string negara){
            this->name = nama;
            this->role = role;
            this->sword = pedang;
            this->country = negara;

            std::cout << "Created New Knight Character" << std::endl;
        }
    
};


int main(){

    Knight jean("Jean","Knight","Aquilas Favonia","Monstad");
    Knight kaeya("kaeya","Knight","Skyward Sword","Monstad");

    std::cout << jean.name;

    return 0;
}