CFG(Context Free Grammar) uses append in prolog
-> It serves as a function to combine the result

s(C):-np(A),vp(B),append(A,B,C).
np(C):-det(A),n(B),append(A,B,C).
vp(C):-v(A),np(B),append(A,B,C).
vp(C):-v(C).
det([the]).
det([a]).
n([man]).
n([woman]).
v([shoots]).

s([the,woman,shoots,a,man]).
true

det(the).
false

det([the]).
true

det([man]).
false

s(Sentence).
Sentence = [the, man, shoots, the, man]
Sentence = [the, man, shoots, the, woman]
more....

np(X).
X = [the, man]
X = [the, woman]
X = [a, man]
X = [a, woman]
----------------------------------

s(A-C):-np(A-B),vp(B-C).
np(A-C):-det(A-B),n(B-C).
vp(A-C):-v(A-B),np(B-C).
vp(A-C):-v(A-C).
det([the|W]-W). 
det([a|W]-W).
n([man|W]-W). 
n([woman|W]-W). 
v([shoots|W]-W).







