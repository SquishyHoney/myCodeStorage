#include <iostream>
using namespace std;

int main(){

    int math_score = 100;
    int science_score = 40;
    int KKM = 70;

    if(math_score >= KKM && science_score >= KKM ){
        cout << "You pass\n";
    }else{
        cout << "You did not pass\n";
    }


    if(math_score >= 0 || science_score >= 0){
        cout << "You did a test\n";
    }else{
        cout << "You didn't atend any test\n";
    }
        
    return 0;   
}