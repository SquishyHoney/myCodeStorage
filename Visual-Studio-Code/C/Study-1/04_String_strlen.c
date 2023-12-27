#include <stdio.h>
#include <string.h>


//
//  Use this function to find the length of the string
//     strlen(const *char); returns an INT  
//


int main(){

    char name[] = "Bro Code";

    int nameSize = strlen(name);
    printf("Size of %s is  : %d\n",name,nameSize);
    

    for(int i=0;i<nameSize;i++){
        printf("[%3d].[%c]\n",name[i],name[i]);
    }
    printf("\n");

    for(int i=0;i<sizeof(name);i++){
        printf("[%3d].[%c]\n",name[i],name[i]);
    }
    
    

    return 0;
}