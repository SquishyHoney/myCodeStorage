sumList([],TotalSum,TotalSum).
sumList([H|T],Hold,TotalSum):- NewHold is H + Hold,sumList(T,NewHold,TotalSum).
sumListWrap(X,Y):-sumList(X,0,Y).
sumListWrap([1,2,3],X).


add123([],[],_).
add123([H1|T1],[H2|T2],Adder):-
    H2 is H1 + Adder,
    add123(T1,T2,Adder).
wrapper(L1,L2):-add123(L1,L2,1).


ln([],0).
ln([_|L],N):-ln(L,X),N is X + 1.

Review Ulangan:
Fact - suatu pernyataan mengenai suatu objek
Rule - merupakan predikat yang merelasikan beberapa fakta dengan pemisahan :-
Query - Query merupakan inputan kita ke prolog yang memungkinkan kita untuk 
        1. bertanya kepada prolog apakah sebuah fakta itu benar atau tidak
        2. Nilai /  hasil dari suatu fakta

RECURSIVE
- kemampuan sebuah Clause panggil clasue sendiri untuk mememcah kan suatu masalah dia bisa panggilclasuse 
sendiri karena blom ada hasil sehingga membutukkan clase lagi

BASE CLAUSE  vs  RECURSIVE CLAUSE 
- base clause merupakan bagian akhir (atau stop condition) dari sebuah rekursi
sedangkan recursive clause merupakan kondisi sebuah rekursi belom menemukan base clausenya sehingga
akan terus memangil recursive clause nya 

NOMOR 4
pulau(jawa).
pulau(sumatera).
pulau(sulawesi).
prov(jawa,timur).
prov(sumatera,barat).
prov(jawa,barat).
prov(sulawesi,barat).

kota(jakarta,barat).
kota(jakarta,timur).

kawasan(Barat):- kota(Barat,barat);pulau(Barat),prov(Barat,barat).

?- kawasan(Jakarta).
kawasan(Jakarta):- kota(Jakarta,barat);pulau(Jakarta),prov(Jakarta,barat).

Jakarta = jakarta 

Jakarta = sumatera
Jakarta = sulawesi

Jakarta = sumatera
Jakarta = jawa
Jakarta = sulawesi

Mencari middle Part
panjang(A,B):- 0 is mod(B,2), A is B/2,!.
panjang(A,B):- 1 is mod(B,2), A is (B/2)+(1/2).
accMiddle([X|_], X,0).
accMiddle([X|_], X,0.0).
accMiddle([_|T], X, L):-
L2 is L-1,
accMiddle(T, X, L2).
middle([H|T], X):-
length([H|T], L1),
panjang(L,L1),
L2 is L-1,
accMiddle([H|T], X, L2).





Buatlah predikat b2d(L,X) dengan L merupakan list biner berisi 0 dan 1, dan X merupakan bilangan
desimal hasil konversi L.
Contoh penggunaan :
b2d([1,1,0,0],Decimal) -> Decimal = 12
b2d([1,0,1,0,1],21) -> true


b2d([],0).
b2d([H|T],X):- b2d(T,X1), length([H|T], L), X is X1 + (2^(L-1)*H).
                
koneksi(X,Y):- 
    bus(X,Y);kereta(X,Y);pesawat(X,Y); 
    bus(X,A),koneksi(A,Y); 
    kereta(X,A),koneksi(A,Y); 
    pesawat(X,A),koneksi(A,Y).

--------------------------------

koneksi(X,Y):-
    bus(X,Y);kereta(X,Y);pesawat(X,Y);
    bus(X,A), koneksi(A,Y);
    kereta(X,A), koneksi(A,Y);
    pesawat(X,A),koneksi(A,Y).

koneksi_bolakbalik(X,Y):- koneksi(X,Y);koneksi(Y,X).








Review Slide 6 :
append/3
append(L1,L2,Result).

append([],L,L).
append([H|L1],L2,[H|L3]):-append(L1,L2,L3).


append([a,b,c],[1,2,3], R).
R


























