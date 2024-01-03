name = "Evan"
age = 19
college = True

def makeLine():
    for i in range (0,15):
        print(f'-')

makeLine()

if(college):
    print(f'Hello my name is {name} and I am {age} years old')
    print("In 5 years I'll be {}".format(age+5))
else:
    print(f'{name}','is not attenting any Universities')

print('This is a {} {}'.format('this is a formated string',1))