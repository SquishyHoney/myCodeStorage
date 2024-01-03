#include <stdio.h>
#include <string.h>

struct Mahasiswa{
    char nama[30];
    int id_mahasiswa;
    char prodi[10];
    float gpa;
};

int main(){

    struct Mahasiswa john;

    strcpy(john.nama,"John Thor");
    john.id_mahasiswa = 14;
    strcpy(john.prodi,"Informatika");
    john.gpa = 3.7;

    printf("Name : %s\n",john.nama);
    printf("Name : %d\n",john.id_mahasiswa);
    printf("Name : %s\n",john.prodi);
    printf("Name : %.2f\n",john.gpa);

    return 0;
}