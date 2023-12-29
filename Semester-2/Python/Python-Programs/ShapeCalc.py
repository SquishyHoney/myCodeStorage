import math

print("Welcome To Shapes Calculator")
print("1. Rectangle")
print("2. Square")
print("3. Circle")
pick = int(input("\nPick : "))

match pick:

    case 1:
        length = float(input("Enter Length : "))
        heigth = float(input("Enter Heigth : "))
        cmd = input("Area/Circumfrence : ")

        if cmd == "Area" :
            
            ans = length*heigth
            print(f"Luas Persegi Panjang : {round(ans,3)}")

        elif cmd == "Circumfrence":

            ans = 2*(length+heigth)
            print(f"Keliling Persegi Panjang : {round(ans,3)}")
    
    case 2:
        length = float(input("Enter Length : "))
        cmd = input("Area/Circumfrence : ")

        if cmd == "Area":

            ans = pow(length,2)
            print(f"Luas Persegi : {round(ans,3)}")

        elif cmd == "Circumfrence":

            ans = length*4
            print(f"Keliling Persegi : {round(ans,3)}")

    case 3:
        radius = float(input("Enter Radius : "))
        pi = math.pi
        cmd = input("Area/Circumfrence : ")

        if cmd == "Area":

            ans = pow(radius,2)