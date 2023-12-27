#include <iostream>
#include <string>

/**/

using std::cout;
typedef std::string string;

class player{
    public :

        string name;
        string charClass;
        string weapon;
        int level;
        int exp;

        int str;
        int dex;
        int itl;

        void stats(){

            int temp;
            level = level + (exp/10);

            if(exp > 9){
                temp = exp % 10;
            }

            cout << "[" << level << "] [" << name << "]" << std::endl;
            cout << "[";

            while(temp != 0){
                for(int i=0;i<temp;i++){
                    cout << " +" ;
                }
                break;      
            }

            for(int j=0;j<9-temp;j++)
                cout << " -";

            cout << " ]" << std::endl;
            cout << "Class   : " << charClass << std::endl;
            cout << "Weapon  : " << weapon << std::endl;
            cout << "Strgth  : " << str << std::endl;
            cout << "Dextrty : " << dex << std::endl;
            cout << "Intlgnc : "<< itl << std::endl;
        }

};

namespace knight{
    string charClass = "knight";
    string weapon = "Sword";
    int str = 14;
    int dex = 6;
    int itl = 4;
}

int main(){ 

    player Evander = {"Diluc","Claymore","Wolf's Gravestone",3,85,14,7,5};
    Evander.stats();
    
    return 0;
}