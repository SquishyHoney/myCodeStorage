#include <stdio.h>

int main(){

    int arr[3][3] = {{1,2,3},{4,5,6},{7,8,9}};
    int r,c;

    printf("Printing Matric : \n");

    for(int i=0;i<3;i++){
        for(int j=0;j<3;j++){
            printf("[%d]",arr[i][j]);   
        }
        printf("\n");
    }


    printf("Col : ");
    scanf("%d",&c);
    c -= 1;
  
    printf("Row : ");
    scanf("%d",&r);
    r -= 1;

    
    for(int i=0;i<3;i++){
        
        if(i != r)continue;

        for(int j=0;j<3;j++){ 
            if(j != c)continue;
            printf("Found : %d\n",arr[i][j]);
        }
        
    }

    return 0;
}