import math

#for i in reversed(Array):
#for i in Array:
#for i in reversed(range(0,10,1)):
#for i in range(1,10,2):
#for i in range(1,10):
#for i in range(0,len(Name)):
    #for j  in range(0,len(Name[i])):

def swap(Arr,one,two):
    Arr[one] , Arr[two] = Arr[two] , Arr[one]

def printArray(Arr):
    size = len(Arr)
    for i in range(0,size):
        print(f"{Arr[i]}",end = " ")
    print()

def found(key,i):
    print(f"Found {key} in index {i+1}")

def notFound(key):
    print(f"{key} is not in the Array")



def bubblelSort(Arr,size):

    for i in range(0,size):

        for j in range(0,size-1):
            if Arr[j] > Arr[j+1]:
                Arr[j] , Arr[j+1] = Arr[j+1] , Arr[j]


def selectionSort(Arr,size):

    for i in range(0,size):
        
        iMin = i
            
        for j in range(i,size):
            if Arr[j] < Arr[iMin]:
                iMin = j
        
        if i != iMin:
            Arr[i] , Arr[iMin] = Arr[iMin] , Arr[i]


def insertionSort(Arr,size):

    for i in range(0,size):

        j = i
        
        while j > 0 and Arr[j] < Arr[j-1]:
            swap(Arr,j,j-1)
            j -= 1 


def merge(Arr,low,mid,high):

    N1 = mid - low + 1
    N2 = high - mid

    bil1 = [0] * (N1)
    bil2 = [0] * (N2)

    for i in range(0,N1):
        bil1[i] = Arr[low + i]

    for j in range(0,N2):
        bil2[j] = Arr[mid + j + 1]
    
    i = 0
    j = 0
    k = low

    while i < N1 and j < N2:
        
        if bil1[i] < bil2[j]:
            Arr[k] = bil1[i]
            i += 1
        else:
            Arr[k] = bil2[j]
            j += 1
        k += 1

    while i < N1:
        Arr[k] = bil1[i]
        i += 1
        k += 1
    
    while j < N2:
        Arr[k] = bil2[j]
        j += 1
        k += 1


def mergeSort(Arr,low,high):
    if low < high:
        mid = low+(high-low)//2 
        mergeSort(Arr,low,mid)
        mergeSort(Arr,mid+1,high)
        merge(Arr,low,mid,high)


def sequentialSearch(Arr,size,key):
    for i in range(0,size):
        if Arr[i] == key:
            return found(key,i)    
    return notFound(key)


def binarySearch(Arr,size,key):
    low = 0
    high = size

    while low < high:
        
        mid = (high+low)//2
    
        if Arr[mid] == key:
            return found(key,mid)
        elif Arr[mid] < key:
            low = mid
        elif Arr[mid] > key:
            high = mid

    return notFound(key)


def jumpSearch(Arr,size,key):
    start = 0
    jump = int(math.sqrt(size))

    while jump < size and Arr[jump] < key:
        start = jump
        jump += int(math.sqrt(size))

        if Arr[jump] == key:
            return found(key,jump)

        if jump > size:
            jump = size

    for i in range(jump,start,-1):
        if Arr[i] == key:
            return found(key,i)
    
    return notFound(key)



num = [4,6,3,7,2,8,1,9,5]
size = len(num)
key = 8

mergeSort(num,0,size-1)

printArray(num)
jumpSearch(num,size-1,key) #Arrays in Python