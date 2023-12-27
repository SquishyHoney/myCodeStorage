atom -> party.
number -> 12.
variable -> Donna
complex -> let(X,Y):- ...

01) inibukanatom 
02) IniAtom
03) not(complex) 
04) ‘pria(roy)’
05) 3_Ekor_Ayam 
06) tiga(ekor,ayam)
07) ‘_IDontCare’ 
08) _
09) +12.78 
10) 46%

1. atom
2. variable
3. complex | functor not | arity = 1
    4. Eror 
5. Eror
6. complex | functor tiga | arity = 2
    7. Eror
    8. atom
    9. Eror
    10. number
-------------------------------------
fact
rule
clauses
predicate

mobil(jaguar,inggris).
mobil(benz,jerman).
suka(saya,jaguar).
suka(kamu,benz).
tim(inggris,arsenal).
tim(jerman,schalke).
suka_mobil(X,Y) :- suka(X,Z),mobil(Z,Y).
tim1(Q) :- tim(P,Q),P=inggris.
tim2(Q) :- tim(P,Q),P=_.

clause = jumlah lines = 9
fact= stating a fact = 6 -> mobil(jaguar,inggris).
rule :- 3
    predicate = mobil,suka,dll

----------------------------------------
?- tim1(X).
tim1(Q) :- tim(P,Q),P=inggris.
Q = X
tim1(X) :- tim(P,X),P=inggris.
tim1(X) :- tim(inggris,X).
tim(inggris,X).
X = arsenal 
tim1(arsenal) :- True 
True


?- tim2(X)
tim2(Q) :- tim(P,Q),P=_.
Q = X
tim2(X) :- tim(P,X),P=_.
P=_.
tim2(X) :- tim(_,X),P=_.
X = arsenal 
X = schalke
True 


?- suka_mobil(X,inggris).
suka_mobil(X,Y) :- suka(X,Z),mobil(Z,Y).
Y = inggris.
suka_mobil(X,inggris) :- suka(X,Z),mobil(Z,inggris).
Z = jaguar.
suka_mobil(X,inggris) :- suka(X,jaguar),mobil(jaguar,inggris).
X = saya.
True 


?- suka_mobil(saya,X).
suka_mobil(X,Y) :- suka(X,Z),mobil(Z,Y).
X = saya.
Y = X.
suka_mobil(saya,X) :- suka(saya,Z),mobil(Z,X).
Z = jaguar.
suka_mobil(saya,X) :- suka(saya,jaguar),mobil(jaguar,X).
X = inggris.
True

----------------------------------------
data_profil(aryo,if,pria,solo).
data_profil(raisa,si,wanita,surabaya).
data_profil(joko,sk,pria,yogyakarta).
data_profil(kintan,if,wanita,solo).
data_profil(hans,sk,pria,jakarta).
data_minat(aryo,database).
data_minat(raisa,database).
data_minat(joko,game_dev).
data_minat(kintan,sw_dev).
data_minat(hans,sw_dev).

mhs_per_jurusan(X,Y):- data_profil(X,Y,Z,A);
?- mhs_per_jurusan(X,si).
X = raisa

raisa :
data_profil(raisa,si,wanita,surabaya).
data_minat(raisa,database).

mhs_per_jurusan(raisa,si):- data_profil(X,Y,Z,A);