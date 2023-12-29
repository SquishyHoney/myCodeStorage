#Using lambda to make force equation
M = 0.5
g = 9.8
m = 10
s = 1

acel = lambda : m/(s**2)
mass = lambda : M * g
frce = lambda : mass()*acel()

result = int(frce())

print("Force :",result)

a = 5
b = 4

dua_ = lambda : (a*b)/10
dua = dua_()
print(dua)


#7. Lambda
Money = 100
Time = 5
function1 = lambda a,b: a + b 
function2 = lambda : Money*Time
function3 = lambda : function1 + function2
