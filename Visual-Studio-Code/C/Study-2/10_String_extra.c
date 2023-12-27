#include <stdio.h>
#include <string.h>

int main(){

    
    char fruit[] = "Banana";
    strset(fruit,'X');
    printf("RESULT : %s\n",fruit);


    char name[] = "Bro Code";
    strnset(name,'X',3);
    printf("RESULT : %s\n",name);


    char knight[] = "sairotrA";
    strrev(knight);
    printf("%s\n",knight);


    char genshin[] = "Diluc Ragnvindr";
    char lastName[] = "c";
    int init = strspn(genshin , lastName);
    printf("%d\n",init);

    return 0;
}