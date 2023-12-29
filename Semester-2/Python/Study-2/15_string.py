#String in Python
x = "sarueis"
res1 = len(x)
print(f"4. {x} , {res1}")

print(f"6. S = {x.find('s')}")
print(f"7. S = {x.rfind('s')}")

print(f"9. {x.capitalize()}")
print(f"10. {x.upper()}")

num = "79"
print(f"13 {type(num)} - {num.isdigit()}")
print(f"14 {type(x)} - {x.isdigit()}")

print(f"16 Good Str? - {x.isalpha()}")

print(f"18 s = {x.count('s')}")
print(f"19 strcspn - {x.replace('s','l')}")

#print(help(str))
name = "Venti the wind archon"
print(name[-1]) #Sifatnya dia Loop
print(name[6:10])
print(name[10:])
print(name[-6:])

name2 = "Diluc"
print(name2[::3])
