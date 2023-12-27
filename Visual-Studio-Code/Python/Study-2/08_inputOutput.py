print("Hello there general kenobi",end = "EnD\n")

print("you","can","seperate",sep = "LOL\n")

x,y = 13,97
print("Printing c code {} and {}".format(x,y),end="\n")


print("printing Bool : ",(14>10)and(-1>0))
print("printing bool : ",(1>0)or(0>9))

search = 10
arr = [1,2,3,19,10]
print("Search {} in {} : ".format(search,arr),(search in arr))

if search in arr :
    print(f"{search} is in {arr}")
else:
    print(f"{search} is not in {arr}")

