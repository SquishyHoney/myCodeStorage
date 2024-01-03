#include <iostream>

int main(){

    std::string questions[] =  {"1. What year did WW2 start",
                                "2. Most influential Physicist",
                                "3. What is 2 + 2?",
                                "4. What is a synonym for 'eloquent'?"};

    std::string options[][4] =  {{"A. 1923", "B. 1927", "C. 1931", "D. 1937"},
                                {"A. Albert Einstein", "B. Isaac Newton", "C. Leonardo Da Vinci", "D. James Cook"},
                                {"A. 3", "B. 4", "C. 5", "D. 6"},
                                {"A. Fluent", "B. Talkative", "C. Quiet", "D. Shy"}}; 

    char answer_key[] = {'D','B','B','A'};

    int size = sizeof(questions)/sizeof(questions[0]);
    char guess[4];
    int score;
    int i=0;

    for(std::string current_soal : questions){
        std::cout << current_soal << std::endl;
        
        for(int j=0 ; j<4 ; j++){
            std::cout << "-------------------" << std::endl;
            std::cout << options[i][j] << std::endl; 
        }
        std::cout << "Your answer [Use capital] : ";
        std::cin >> guess[i];
        i++;
    }

    int correct = 0;
    for(int k=0 ; k<size ; k++){
        if(guess[k] == answer_key[k]){
            correct++;
        }
    }

    std::cout << "Correct answer(s) : [" << correct << "]";

    return 0;
}