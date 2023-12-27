def swap(num,one,two):
    temp = num[one]
    num[one] = num[two]
    num[two] = temp

    print(f"Swaping {num[one]} and {num[two]}")

def insertionSort(num,size):
    print("num is",type(num))
    print("size is",type(size))

    for i in range(0,size):
        k = i
        while k > 0 and num[k] > num[k-1]:
            swap(num,k,k-1)
            k -= 1


num = [6,5,4,1,8,3,2,7,9]
size = len(num)
insertionSort(num,size)

for i in range(0,size):
    print(num[i])

