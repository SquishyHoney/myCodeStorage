import math

print("Calculating the Hipotenuse of a [TRIANGLE]")
height = float(input("Enter Height :"))
width  = float(input("Enter Width  :"))

hipotenuse = math.sqrt(pow(height,2) + pow(width,2))
hipotenuse = math.floor(hipotenuse)
print("Hipotenuse   :{}".format(hipotenuse))



print("Calculating the Area of a [CIRCLE]")
x1 = float(input("Radius 1st coordinate : "))
x2 = float(input("Radius 2nd coordinate : "))
radius = abs(x2-x1)
area = pow(radius,2) * math.pi
area = round(area,2)

print(f"Area of the circle is {area}")