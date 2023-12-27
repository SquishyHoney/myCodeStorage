#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct Mahasiswa{
    char nama[30];
    int id;
};

struct Mahasiswa build(char nama[30],int id){
    struct Mahasiswa temp;
    strcpy(temp.nama,nama);
    temp.id = id;

    printf("Made a new Mahasiswa\n");

    return temp;
};

int main(){

    struct Mahasiswa student1 = build("John",1);
    printf("Nama: %s\n", student1.nama);
    printf("ID: %d\n", student1.id);

    return 0;
}