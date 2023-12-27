Unification :
Contoh = mia & mia, 42 & 42, woman(mia) & woman(mia)
Not unifiy = vincent & mia, woman(mia) & woman(jody)

Definition Of unification :
  1. if T1 and T2 are constants, then Unify if same ATOM or NUMBER
  2. if T1 Variable & T2 any term, then Unify and T1 is instantiated to T2

Ex :
mia = mia.
    true
mia = jake.
    false

?- X=mia, X=vincent.
false

-------------------------------------
dead(gojo).
alive(kashimo).
tenshadow(sukuna).

; -> or gate
, -> and gate
strong(sukuna):-dead(gojo);dead(kashimo).

----------------------------------------
Unification

man(X,beard(jake)) = man(strong(john),Y).
X = strong(john),
Y = beard(jake)

man(X,beard(jake)) = man(strong(john),beard(X)).
false
man(X,beard(jake)) = man(strong(john),beard(Y)).
X = strong(john),
Y = jake

loves(X,X) = loves(marsellus,mia).
false
X = marsellius;
false

--------------------------------
Infinite Loop
X = father(X).

X = father(father(father(...)))


-------------------------------
Proof Search
f(a).
f(b).
g(a).
g(b).
h(b).
k(X):- f(X), g(X), h(X).

?- k(Y).
k(Y):- f(Y), g(Y), h(Y).
-----------------------------
loves(vincent,mia).
loves(marsellius,mia).

jealous(A,B):- loves(A,C),loves(B,C).

?- jealous(X,Y).
jealous(X,Y):- loves(X,C),loves(Y,C).
X = vincent
Y = marsellius
