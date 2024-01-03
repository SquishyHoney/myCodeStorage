#include <stdio.h>

void create(){

    FILE *lp = fopen("File_11_text.txt","w");
    fclose(lp);   
    
}

void delete(){

    if(remove("File_11_text.txt") == 0){
        printf("Deleted File");
    }else{
        printf("No Such File");
    }

}

int main(){

    FILE *fp = fopen("File_11_text.txt","a");
    fprintf(fp,"Spongebob Squarepants\n");
    fclose(fp);

    //delete();
    
    return 0;
}