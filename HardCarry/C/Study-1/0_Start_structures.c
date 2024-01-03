#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <string.h>

struct lesson{
    char course[30];
    float score;
};

struct student{
    char name[30];
    char major[30];
    float gpa;

    struct lesson C,Python;
};

struct student newStudent(char name[],char major[],float gpa){

    struct student temp;
    strcpy(temp.name , name);
    strcpy(temp.major, major);
    temp.gpa = gpa;

    return temp;
};

int main(){

    struct student people1 = newStudent("Alicia","IT",3.97);
    struct student *people1Ptr = &people1;

    strcpy(people1.C.course , "Algoriritma & Struktur Data");
    people1.C.score = 90;

    strcpy(people1.Python.course , "Basic Python");
    people1.Python.score = 85;

    printf("-----STUDENT-----\n");
    printf("Name  : %s\n",people1Ptr->name);
    printf("Major : %s\n",people1Ptr->major);
    printf("GPA   : %.2f\n",people1Ptr->gpa);

    printf("------COURSE------\n");
    printf("Course %s\n",people1.C.course);
    printf("Score : %.2f\n",people1.C.score);

    printf("Course %s\n",people1.Python.course);
    printf("Score : %.2f\n",people1.Python.score);

    return 0;
}