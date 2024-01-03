#include <stdio.h>
#include <string.h>

void length(char *string){
    printf("Length : %d\n",strlen(string));
}

int main(){

    char firstName[] = "Kokoro";
    char lastName[] = "Ayase";

    length(firstName);

    strcpy(firstName,lastName);

    length(firstName);
    printf("%s\n",firstName);


    char string1[] = "Mary is learning C programing";
    char string2[] = "Evan is learning Javascript";

    strncpy(string1,string2,7);
    printf("%s\n",string1);

    return 0;
}