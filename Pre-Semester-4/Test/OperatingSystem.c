#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {

    int total;
    int *arr;

    printf("How many : ");
    scanf("%d", &total);

    arr = (int*)malloc(sizeof(int) * total);

    if (arr == NULL) {
        fprintf(stderr, "Memory allocation failed.\n");
        return 1;
    }

    for (int i = 0; i < total; i++) {
        printf("Enter [%d] : ", i + 1);
        scanf("%d", &arr[i]);

        sleep(1);
        printf(" Inputed!\n");
    }

    printf("Entered values: ");
    for (int i = 0; i < total; i++) {
        printf("[%d] ", arr[i]);
    }

    free(arr);

    return 0;
}

