#include <stdio.h>
#include <string.h>

int main(){

    FILE *fp = fopen("File_12_text.txt","r");
    
    char buffer[255];
    
    if(fp == NULL){
        printf("[Unable to open File]\n");
    }

    while(fgets(buffer, 255, fp) != NULL)
    {    
       printf("%s",buffer);
    }
    

    fclose(fp);
    return 0;
}