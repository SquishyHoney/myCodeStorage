#include <iostream>

template<typename Thing,typename User> 

auto useThis(Thing one,User two){
    std::cout << one << std::endl;
    std::cout << two << std::endl;
}

int i = 0;

class Array{
    public:
        std::string two;
        int one;
    
        Array(int one,std::string two){
            this->one = one;
            this->two = two;
            i++;

            std::cout << "Created New #" << i << std::endl;
        }
};

int main(){

    useThis("Hello",1);

    Array array[] = {
        {1,"A"},
        {2,"B"},
        {3,"C"}
    };

    for(int i=0 ; i<3 ;i++){
        std::cout << array[i].one << array[i].two << std::endl;
    }

    return 0;
}