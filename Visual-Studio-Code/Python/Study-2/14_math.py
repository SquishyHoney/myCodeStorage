PI = 3.14
num = 7
neg = -19
des = 0.19

# |-2|
print(f"|{neg}|  = {abs(neg)}") 

# 7^
print(f" {num}^3   = {pow(num,3)}")

# 3..
print(f"{PI}   = {round(PI,1)}") ######

# 3.1 -> 4
print(f"{num}|{PI} = {max(num,PI)}") ######

# 3.1 -> 3
print(f"{num}|{PI} = {min(num,PI)}") ######


import math

# 3.14
print(f"PI = {math.pi}")

# 2.7
print(f"e = {math.e}") ######

# Root
print(f"{int(math.sqrt(9))} = 9^1/2")


print(f"{math.ceil(3.7)} = 4") ######

print(f"{math.floor(3.7)} = 3") ######

print("\nArea of a circle")
radius = float(input("Enter radius : "))
print(f"Area\n{math.pi} x {radius}^2 = {math.pi*pow(radius,2)}")