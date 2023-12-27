#include <iostream>
#include <ctime>

// * 
// & Adress Of
//   Normal
void testPointer(){
    using namespace std;

    int number = 12;
    int *number_ptr;

    cout << &number << " = " << number_ptr << endl;
    number_ptr = &number;
    cout << &number << " = " << number_ptr << endl;

    cout << number_ptr << endl;
    cout << *number_ptr << endl;
    cout << &number_ptr << endl;
}

void swap(int &one,int &two){
    int temp = one;
    one = two;
    two = temp;
}

void bubbleSort(int array[],int size){

    for(int i=0 ; i<size ; i++){
        for(int j=0 ; j<size-1 ; j++){
            if(array[j] > array[j+1]){
                std::cout << "Swapping " << "[" << array[j] << "] & [" <<  array[j+1] << "]" << std::endl;
                swap(array[j],array[j+1]);
            }
        }
    }

}

void selectionSort(int array[],int size){

    int iMin; //Sebagai Indikator Jangan Lupa

    for(int i=0 ; i<size ; i++){

        iMin = i;

        for(int j=i ; j<size ; j++){
            if(array[j] < array[iMin]){
                iMin = j;
            }
        }

        if(iMin != i){
            swap(array[iMin],array[i]);
        }

    }
    
}   

void insertionSort(int array[],int size){
    int j;
    for(int i=0 ; i<size ; i++){
        j=i;
        while(j>0 && array[j] < array[j-1]){
            swap(array[j],array[j-1]);
            j--;
        }
    }
}

int main(){

    srand(time(NULL));

    int number_array[10];
    for(int i=0 ; i<sizeof(number_array)/sizeof(number_array[0]) ; i++){
        int random_number = (rand()%20) + 1;
        number_array[i] = random_number;
    }

    int number_array2[10] = {4,1,6,8,9,2,10,3,5,7};
    int size = sizeof(number_array)/sizeof(number_array[0]);

    for(int selected_number : number_array){
        std::cout << "[" << selected_number << "] ";
    }

    std::cout << "\n";
    insertionSort(number_array,size);

    std::cout << "\nSorted Array : " << std::endl;
    for(int i=0 ; i<size ; i++){
        std::cout << "[" << number_array[i] << "] ";
    }

    return 0;
}

