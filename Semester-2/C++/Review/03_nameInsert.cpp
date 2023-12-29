#include <iostream>
#include <cstring>

//10:00 - 11:30
std::string imDoingThis(std::string subject,std::string verb){
    return subject + " is " + verb;
}

int main(){
    using std::cout;
    std::string my_name;
    std::string gender;
    char choice;

    cout << "[Welcome today is your internship]\n";
    
    do{
        cout << "What is your name? : ";
        std::getline(std::cin,my_name);
    }while(my_name.empty());

    for(int i=0 ; i<my_name.length() ; i++){
        cout << "[" << my_name[i] << "]";
    }

    cout << "\nGender [M/F] : ";
    std::getline(std::cin,gender);

    (choice = 'M')? gender = "Mr. " : gender = "Ms. ";

    int space = my_name.find(' ');    
    my_name.erase(space+1);
    my_name.append("Ph.D");
    my_name.insert(0,gender);

    cout << "[Welcome " << my_name << "]" << std::endl;

    std::string my_hobby;
    cout << "Enter Your Hobby : ";
    std::getline(std::cin,my_hobby);

    std::string my_sentence = imDoingThis(my_name,my_hobby);
    cout << my_sentence;

    return 0;
}