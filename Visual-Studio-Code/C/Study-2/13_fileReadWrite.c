#include <stdio.h>
#include <string.h>

typedef struct{

    char name[50];
    char weapon[50];
    int level;

}unit;

void swap(unit *temp1,unit *temp2){
    unit temp = *temp1;
    *temp1 = *temp2;
    *temp2 = temp;
}

int selectionSort(unit *temp,int size){

    int iMin;
    int nilai;
    
    for(int i=0;i<size;i++){

        iMin = i;

        for(int j=i;j<size;j++){

            nilai = strcmp(temp[j].name,temp[iMin].name);
            if(nilai < 0){
            
                iMin = j;

            }   

        }

        if(iMin != i){

            swap(&temp[iMin],&temp[i]);

        }

    }

    return 0;
}

int main(){

    unit genshin[100];
    
    int size = sizeof(genshin)/sizeof(genshin[0]);
    printf("SIZE : %d\n\n",size);

    char A[] = "File_13_text.txt";
    FILE *fp = fopen(A,"r");


    if(fp == NULL){
        printf("Eror opening file");
    }

    int i = 0;
    //feof is false if it's not the end of the file

    while(!feof(fp)){
        fscanf(fp,"%[^/]/%[^/]/%d\n",
            genshin[i].name,
            genshin[i].weapon,
            &genshin[i].level
        );

        i++;
    }


    selectionSort(genshin,i);


    for(int j=0;j<i;j++){
        printf("[%s]-[%s]-[%d]\n",
            genshin[j].name,
            genshin[j].weapon,
            genshin[j].level
        );
    }

    FILE *fp2 = fopen("File_13_textSorted.txt","w");
    for(int k=0;k<i;k++){
        fprintf(fp2,"%s/%s/%d\n",
            genshin[k].name,
            genshin[k].weapon,
            genshin[k].level
        );
    }

    fclose(fp);
    fclose(fp2);

    return 0;
}