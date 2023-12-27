#include <iostream>

namespace first{
    int x = 1;
}

namespace second{
    int x = 2;
}

int main(){
    using std::string;
    using std::cout;

    cout << first::x;

    return 0;
}