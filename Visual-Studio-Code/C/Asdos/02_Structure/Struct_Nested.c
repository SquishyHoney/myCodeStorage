#include <stdio.h>
#include <string.h>

struct Sks{
    char nama_mata_kuliah[30];
    float score;
};  

struct Mahasiswa{
    char name[30];
    int id;
    struct Sks Algorithma,WebProg;
};

struct Mahasiswa *Make(char name[30],int id){
    struct Mahasiswa temp;
    strncpy(temp.name,name);
    temp.id = id;
    return temp;
};

int main(){

    struct Mahasiswa John = Make("John Thor",1);
    strcpy(John.Algorithma.nama_mata_kuliah,"Algoritma Data Struktur");
    John.Algorithma.score = 3.89;
    strcpy(John.WebProg.nama_mata_kuliah,"Web Programing");
    John.WebProg.score = 3.79;

    printf("Nama          : %s\n",John.name);
    printf("ID            : %d\n",John.id);
    printf("Mata Kuliah 1 : %s\n",John.Algorithma.nama_mata_kuliah);
    printf("Nilai         : %.2f\n",John.Algorithma.score);
    printf("Mata Kuliah 1 : %s\n",John.WebProg.nama_mata_kuliah);
    printf("Nilai         : %.2f\n",John.WebProg.score);

    return 0;
}

/*
#include <stdio.h>
#include <string.h>

struct Sks {
    char nama_mata_kuliah[30];
    float score;
};

struct Mahasiswa {
    char name[30];
    int id;
    struct Sks Algorithma, WebProg;
};

struct Mahasiswa Make(const char *name, int id) {
    struct Mahasiswa temp;
    strncpy(temp.name, name, sizeof(temp.name));
    temp.id = id;
    return temp;
};

int main() {
    struct Mahasiswa John = Make("John Thor", 1);
    strcpy(John.Algorithma.nama_mata_kuliah, "Algoritma Data Struktur");
    John.Algorithma.score = 3.89;
    strcpy(John.WebProg.nama_mata_kuliah, "Web Programming");
    John.WebProg.score = 3.79;

    printf("Nama          : %s\n", John.name);
    printf("ID            : %d\n", John.id);
    printf("Mata Kuliah 1 : %s\n", John.Algorithma.nama_mata_kuliah);
    printf("Nilai         : %.2f\n", John.Algorithma.score);
    printf("Mata Kuliah 2 : %s\n", John.WebProg.nama_mata_kuliah); // Changed to "Mata Kuliah 2"
    printf("Nilai         : %.2f\n", John.WebProg.score);

    return 0;
}

*/