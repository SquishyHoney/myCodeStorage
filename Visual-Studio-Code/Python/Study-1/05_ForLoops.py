Array = [1,2,3,4,5,6,7]
Name = ["Saruei" , "Artorias" , "Bro Code"]


#for i in reversed(Array):
#for i in Array:
#for i in reversed(range(0,10,1)):
#for i in range(1,10,2):
#for i in range(1,10):
#for i in range(0,len(Name)):
    #for j  in range(0,len(Name[i])):


for i in reversed(Array):
    print(i,end =" ")



print()
for i in Array:
    print(i,end=" ")



print()
for i in reversed(range(0,10,1)):
    print(i,end=" ")



print()
for i in range(1,10,2):
    print(i,end=" ")



print()
for i in range(1,10):
    print(i,end=" ")



print()
for i in range(0,len(Name)):
    for j  in range(0,len(Name[i])):
        print(Name[i][j],end="/")
    print("\n")