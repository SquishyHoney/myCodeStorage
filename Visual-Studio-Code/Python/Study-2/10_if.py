myAge = 100

print(f"{myAge} is current age")

if myAge >= 18 :
    print("Can drink")
else:
    if myAge >= 70:
        print("Wont be printed")
    else:
        print("Too young")

print("=============================")

score = 9
print(f"{score} current score")

if score == 100:
    print('Perfect Score')
elif score > 70:
    print('pass')
else:
    print('lol noob')

print("=============================")

number = 10

if number > 100:
    print("greater than 100")
    if number == 101:
        print(f"Your number is {number}")
    else :
        print("It's ok it's still good")

else:
    print("REACHED OUTSIDE")