#include <iostream>

//Get = read
//set = write

class Stove{
    private:
        int suhu = 0;

    public:
        int getSuhu(){
            return suhu;
        }

        void setSuhu(int suhu){
            if(suhu < 0){
                this->suhu = 0;
            }else if(suhu >= 10){
                this->suhu = 10;
            }else{
                this->suhu = suhu;
            }
        }
};

int main(){

    Stove stove;
    //stove.suhu = 1000;

    stove.setSuhu(7);

    std::cout << "Suhunya : " << stove.getSuhu();

    return 0;
}