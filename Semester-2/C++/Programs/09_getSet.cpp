#include <iostream>

class Glass{
    private:
        double isi = 0;
    public:
        double liatTakaran(){
            return isi;
        }

        void isiAir(double total_air){
            if(total_air < 0){
                this->isi = 0;
            }else if(total_air > 10){
                this->isi = 10;
            }else{
                this->isi = total_air;
            }
        }
};

int main(){

    Glass cup;
    Glass bottle;
    cup.isiAir(6.3);

    std::cout << cup.liatTakaran() << '\n';
    std::cout << bottle.liatTakaran() << '\n';

    return 0;
}