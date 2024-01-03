evolution(larvitar,egg).
evolution(pupitar,lavitar).
evolution(tyranitar,pupitar).
evolution(mega_tyranitar,tyranitar).

evolvedInto(X,Y):-evolution(X,Y).
evolvedInto(X,Y):-evolution(X,Z),evolution(Z,Y).
%evolvedInto(X,Y):-evolution(X,Z),evolution(Z,A),evolution(A,Y).

isDigesting(X,Y):- justAte(X,Y).
isDigesting(X,Y):- justAte(X,Z), isDigesting(Z,Y).
justAte(mosquito,blood(john)).
justAte(frog,mosquito).
justAte(stork,frog). 


child(anna,bridget).
child(bridget,caroline).
child(caroline,donna).
child(donna,emily).

descend(X,Y):-child(X,Y).
descend(X,Y):-child(X,Z),child(Z,Y).
-----------------------------------------------

evolution(aa,bb).
evolution(bb,cc).
evolution(cc,dd).
evolution(dd,ee).
evolution(ee,ff).

evolveInto(X,Y):-evolution(X,Y).
evolveInto(X,Y):-evolution(X,Z),evolveInto(Z,Y).

?- evolveInto(cc,ff).
1true

numeral(0).
numeral(succ(X)):-numeral(X).

numeral(succ(succ(succ(succ(1))))).
false
numeral(succ(succ(succ(succ(0))))).
1true

Succsessors.
numeral(1).
numeral(0).
numeral(succ(X)):-numeral(X).

numeral(X).
X = 1
X = 0
X = succ(1)
X = succ(0)
X = succ(succ(1))
X = succ(succ(0))
X = succ(succ(succ(1)))
X = succ(succ(succ(0)))
X = succ(succ(succ(succ(1))))

---------------------------
Soal

child(anna,bridget).
child(bridget,caroline).
child(caroline,donna).
child(donna,emily).
descend(X,Y):- child(X,Y).
descend(X,Y):- child(X,Z), descend(Z,Y). 


First Solution:
?- descend(A,B). 
descend(A,B):- child(A,Z),descent(Z,B).
descent(Z,B):- child(Z,C),descend(C,B).
A = anna.
B = emily.
True

Second Solution:
?- descent(A,B).
descend(A,B):- child(A,B).
A = anna.
B = bridget.
True

Third Solution:
All child() with both clauses.

