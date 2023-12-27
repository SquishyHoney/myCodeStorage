[mia]
head : mia
tail : []

--------------------------------------------------------
[mia,jill,jules,yolanda]
[mia,robber(honeybunny),X,2,mia]
[]
[one,[two,three],[four,five]]

--------------------------------------------------------
[A|B] = [mia,jill,[lol,lmao,[rofl,wee]],jules,yolanda].
A = mia,
B = [jill, [lol, lmao, [rofl, wee]], jules, yolanda]

--------------------------------------------------------
[X|Y] = [].
false
[X|Y] = [lol].
X = lol,
Y = []

--------------------------------------------------------
[Head,First_class|Tail] = [conductor,rich,pass1,pass2,pass3].
First_class = rich,
Head = conductor,
Tail = [pass1, pass2, pass3]

--------------------------------------------------------

[X,_,Y,_,_|_] = [e,v,a,n,d,e,r,n,i,k,o,l,a,i].
X = e,
Y = a
[X,Z,Y,_,_|_] = [e,e,a,n,d,e,r,n,i,k,o,l,a,i].
X = Z, Z = e,
Y = a

--------------------------------------------------------
Latihan
1. [a,b,c,d] = [a,[b,c,d]].
2. [a,b,c,d] = [a|[b,c,d]].
3. [a,b,c,d] = [a,b,[c,d]].
4. [a,b,c,d] = [a,b|[c,d]].
5. [a,b,c,d] = [a,b,c,[d]].
6. [a,b,c,d] = [a,b,c|[d]].
7. [a,b,c,d] = [a,b,c,d,[]].
8. [a,b,c,d] = [a,b,c,d|[]].
9. [] = _. -> _ is "i dont care variable"
10. [] = [_].
11. [] = [_|[]].

Output
1. false v
True v
false v
True v

        5.True x list bukan termaksud array
True v 
        true x [] bukan null
true v
true v

        10.True x 
false v

-----------------------------------------
1. [1|[2,3,4]]
2. [1,2,3|[]]
3. [1|2,3,4]
4. [1|[2|[3|[4]]]]
5. [1,2,3,4|[]]
6. [[]|[]]
7. [[1,2]|4]
8. [[1,2],[3,4]|[5,6,7]]


    1.correct 2
2.correct 3
    3.corrent 4 -> Syntax Incorrect
    4.correct 2 -> Mestinya 4 loops

5. correct 4
    6. incorect -> 0
    7. correct 2 / a list and a 4 -> 
8. correct 5.

length([H|T],X).
X = total_length.
------------------------------------------
Members 
member(X,[X|T]).
member(X,[H|T]):-member(X,T).


member(a,[a,b,c,d,e,f,g]).
Singleton variables: [X,H,T]
Singleton variables: [H]
1true

member(g,[a,b,c,d,e,f,g]).
Singleton variables: [X,H,T]
Singleton variables: [H]
1true