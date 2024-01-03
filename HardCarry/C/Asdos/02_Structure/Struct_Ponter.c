#include <stdio.h>
#include <string.h>

struct Mahasiswa{
    char nama[30];
    int id;
};

struct Mahasiswa printStruct(struct Mahasiswa *temp){
    printf("Nama : %s\n",temp->nama);
    printf("Id   : %d\n",temp->id);
}

int main(){

    struct Mahasiswa John = {"John Thor",12};
    struct Mahasiswa *Johnptr = &John;

    printStruct(&John);
    printStruct(Johnptr);

    printf("Nama : %s\n",Johnptr->nama);
    printf("Id   : %d\n",Johnptr->id);
    
    return 0;
}