#Selection Sort

def swap(list,one,two):

    #You dont fucking need this in python

    temp = list[one]
    list[one] = list[two]
    list[two] = temp


def selectionSort(Arr,N):

    iMin = 0

    for i in range(0,N):

        iMin = i

        for j in range(i,N):

            if Arr[j] < Arr[iMin]:
                iMin = j

        if i != iMin:
            Arr[i],Arr[iMin] = Arr[iMin],Arr[i]


num = [7,4,2,6,3,1,5]
size = len(num)

selectionSort(num,size)

print("Sorted Array : ")
for i in range (0,size):
    print(f" {num[i]}",end="")