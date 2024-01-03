#x = input('Enter : ')
#print('We are running on RAM')

#with open('pythonFile.txt','a') as myFile:
    #myFile.write('\nIt\'s not you its me')
    
#NOTE 2 HOURS 16.22 - 18.33

with open('pythonFile2.txt','r') as myFile:
    #print(myFile.read())
    sen = myFile.read()
    for attributes in sen :
        sen = attributes.split(' ')
        print(sen)




