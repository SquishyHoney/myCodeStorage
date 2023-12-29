knights = "Smough" , "Artorias"\
      , "Ornstein" , "Ciaran"
for i in range (0,len(knights)):
    print(knights[i])



print("--------------------")



lords = "Gwyn" , "Nito" , \
    "Izalith" , "Cinder"
for j in reversed(range(0,len(lords))):
    print(lords[j])



print("--------------------")



example ="Yes" , "No" , "Yes" \
    , "No" , "Yes" , "No"
print(len(example))
for i in range(0,6,2):
    print(example[i])



print("--------------------")



print("Printing Whole string")
Vtuber = "Saruei"
for i in Vtuber:
    print(i)



print("---------------------")



for i in range(0,11):
    if(i == 3):
        print("Skipped 3")
        continue
    print(i)

