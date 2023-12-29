%CFG using append/3
s(C):- np(A), vp(B), append(A,B,C).
np(C):- det(A), n(B), append(A,B,C).
vp(C):- v(A), np(B), append(A,B,C).
vp(C):- v(C).
det([the]). 
det([a]).
n([man]). 
n([woman]). 
v([shoots]).


?- s([the,woman,shoots,a,man]).
Yes
?- vp([shoots]).
yes
?- det(X).
X = [the]
X = [a]

%Using Diffrence List
[a,b,c]-[ ]    is the list [a,b,c]
[a,b,c,d]-[d]  is the list [a,b,c]
[a,b,c|T]-T    is the list [a,b,c]
X-X            is the empty list [ ] 


s(A-C):- np(A-B),vp(B-C).
np(A-C):- det(A-B),n(B-C).
vp(A-C):- v(A-B),np(B-C).
vp(A-C):- v(A-C).
det([the|W]-W).
det([a|W]-W).
n([man|W]-W).
n([woman|W]-W).
v([shoots|W]-W).


s(C):- np(A), vp(B), append(A,B,C).
np(C):- det(A), n(B), append(A,B,C).
vp(C):- v(A), np(B), append(A,B,C).
vp(C):- v(C).
det([the]). 
det([a]).
n([man]). 
n([woman]). 
v([shoots]).
