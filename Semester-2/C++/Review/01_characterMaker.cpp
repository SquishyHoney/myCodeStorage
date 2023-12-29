#include <iostream>

namespace Knight{
    int str = 10;
    int dex = 12;
    int fth = 10;
    int mgc = 4;
}

namespace Warrior{
    int str = 17;
    int dex = 10;
    int fth = 6;
    int mgc = 5;
}





class MyCharacter{
    private : 
        int level = 0;
    public :
        std::string name = "Default Ma Licis";
        std::string type = "Kngiht";

        int str,dex,fth,mgc;

        MyCharacter(std::string nama,std::string type){
            this->name = nama;
            this->type = type;

            this->str = 0;
            this->dex = 0;
            this->fth = 0;
            this->mgc = 0;
        }
};





class MyKnight : public MyCharacter{
    public :
        MyKnight(std::string nama) : MyCharacter(nama,"knight"){
            using namespace Knight;
            this->str = Knight::str;
            this->dex = Knight::dex;
            this->fth = Knight::fth;
            this->mgc = Knight::mgc;
        }
};

class MyWarior : public MyCharacter{
    public :
        MyWarior(std::string nama) : MyCharacter(nama,"Warior"){
            using namespace Warrior;
            this->str = Warrior::str;
            this->dex = Warrior::dex;
            this->fth = Warrior::fth;
            this->mgc = Warrior::mgc;
        }
};






void printingClass(MyCharacter temp){
    using std::cout;

    cout << "[" << temp.name << "]" << " [" << temp.type << "]\n";
    cout << "Name : " << temp.name << std::endl;
    cout << "---[Stats]---" << std::endl;

    cout << "Strength : " << temp.str << std::endl;
    cout << "Dexterity: " << temp.dex << std::endl;
    cout << "Faith    : " << temp.fth << std::endl;
    cout << "Magic    : " << temp.mgc << std::endl;
};

int main(){

    std::string name;

    std::cout << "Please Enter A name [Knight] : ";
    std::getline(std::cin,name);
    MyKnight new_Knight(name);


    std::cout << "Please Enter A name [Warrior] : ";
    std::getline(std::cin,name);
    MyWarior new_Warior(name);

    printingClass(new_Knight);
    printingClass(new_Warior);


    return 0;   
}