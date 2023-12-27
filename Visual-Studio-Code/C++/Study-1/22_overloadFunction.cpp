#include <iostream>

int sum(int a){
    return a;
}

int sum(int a,int b){
    return a+b;
}

int sum(int a,int b,int c){
    return a+b+c;
}

int sum(int a,int b,int c,int d){
    return a+b+c+d;
}

int main(){

    std::cout << sum(1) << std::endl;
    std::cout << sum(1,2) << std::endl;
    std::cout << sum(1,2,3) << std::endl;
    std::cout << sum(1,2,3,4) << std::endl;

    return 0;
}