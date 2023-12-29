#include <stdio.h>
#include <string.h>

int main(){


    char name1[] = "Harry ";
    char name2[] = "Potter";

    strcat(name1,name2);
    printf("%s\n",name1);
    printf("%s\n",name2);

    printf("%d\n\n",strlen(name1));



    char first[12] = "King ";
    char last[] = "Arthur the III";

    strncat(first,last,6);
    printf("%s\n",first);
    printf("%s\n",last);

    printf("%d\n\n",strlen(first));




    return 0;
}