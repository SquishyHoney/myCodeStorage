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
    char guess;
    int score;
    
    for(int i=0 ; i<size ; i++){
        std::cout << "------------------------------------" << std::endl;
        std::cout << questions[i] << std::endl;
        std::cout << "------------------------------------" << std::endl;
 
        for(int j=0 ; j<sizeof(options[i])/sizeof(options[i][0]) ; j++){
            std::cout << options[i][j] << std::endl;
        }

        std::cout << "Your answer : ";
        std::cin >> guess;
        guess = toupper(guess);

        if(guess == answer_key[i]){
            std::cout << "Correct" << std::endl;
            score++;
        }else{
            std::cout << "Wrong" << std::endl;
            std::cout << "Answer : " << answer_key[i] << std::endl;
        }
    }

    std::cout << "Your score : ";
    std::cout << (score/(double)size) * 100 << "%";

    return 0;
}