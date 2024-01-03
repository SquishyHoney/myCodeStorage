#include <stdio.h>

int main(){

    int number = 5;
    int *number_ptr = NULL;

    number_ptr = &number;

    printf("number Addrs : %p\n\n",&number);

    printf("number Addrs : %d\n",number);
    printf("number_ptr Addrs : %d\n\n",*number_ptr);

    printf("number_ptr Addrs : %p\n",&number_ptr);
    printf("number_ptr Addrs : %p\n",number_ptr);

    return 0;
}