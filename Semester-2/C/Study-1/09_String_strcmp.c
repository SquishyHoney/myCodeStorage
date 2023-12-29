#include <stdio.h>
#include <string.h>

int compare(int result){
    
    if(result == 0){
        printf("It's the same car brand\n");
    }else{
        printf("Not the same car brand\n");
    }
    
    return 0;
}

int main(){

    char Car1[] = "BMW 3 Series";
    char Car2[] = "BMW X1";

    int result = strncmp(Car1,Car2,3);
    compare(result);



    char A[] = "AB";
    char B[] = "ABC";

    int result2 = strcmp(A,B);
    printf("result2 : %d\n",result2);

    if(result2 > 0){

        printf("[%s] is greater than [%s]\n",A,B);

    }else if(result2 < 0){

        printf("[%s] is Less than [%s]\n",A,B);

    }else{

        printf("[%s] is the same as [%s]\n",A,B);
    }



    return 0;
}