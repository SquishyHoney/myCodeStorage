#While Looping

name = ""
while name == "" or name == "lol" :
    name = input("Enter your name : ")

    if name == "" :
        print("You didn't enter anything")
    else : 
        if name == "lol" :
            print("Please enter valid name")
        else :
            print(f"Hello there {name}")


print("----------------------")


age = int(input("Please enter your age : "))
while age < 18 or age > 30:
    
    if age < 4 :
        print(f"how can a {age} year old type")
        age = int(input("Please enter valid student age : "))
    else :
        if age < 1 or age > 30 :
            age = int(input("Please enter valid student age : "))
        else:
            print(f"Welcome {name} you are {age} years old")
            break  

