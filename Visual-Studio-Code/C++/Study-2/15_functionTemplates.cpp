#include <iostream>

/*
int max(int x,int y){
    return (x>y)? x : y;
}

double max(double x,double y){
    return (x>y)? x : y;
}

char max(char x,char y){
    return (x>y)? x : y;
}

Thing max(Thing x,U y){
    return (x > y)? x : y;
}
*/

template<typename Thing, typename U>

auto max(Thing x,U y){
    return (x > y)? x : y;
}

int main(){

    std::cout << max(1,2) << std::endl;
    std::cout << max(1.1,2.2) << std::endl;
    std::cout << max('A','B') << std::endl;

    std::cout << max(1.1,1) << std::endl;

    return 0;
}