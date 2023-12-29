Append/3
append(L1,L2,L3). %is true when
L3 is L1,L2 %(Order Matters)

append([1,2,3],[a,b,c],[1,2,3,a,b,c]). %T/F
1true

append([e,v,a,n],[n,i,k,o,l,a,i],X). %Find Variable
X = [e,v,a,n,n,i,k,o,l,a,i]


--------------------------------------------
Recursive Definition
Definition of append/3
append([],L,L).
append([H|L1],L2,[H|L3]):-append(L1,L2,L3).

this works because appending an empty list to any list will result in the same list

the recursive step says that when concatenating a non-empty list [H|T] with a list L
the result is a list with the head H and the result of concatenating T and L.


How append/3 Works
Search tree for
?- append([a,b,c],[1,2,3],R).


Using append we can Spread the list
?- append(X,Y,[1,2,3,4]).
X=[] Y=[1,2,3,4];
X=[1] Y=[2,3,4];
X=[1,2] Y=[3,4];
X=[1,2,3] Y=[4];
X=[1,2,3,4] Y=[];
No
-------------------------------------------
PREFIX 
Prefix/2 (prefix Arity of 2)
prefix(P,L):-append(P,_,L).

Example:
?-prefix(X,[a,b,c,d]).
X=[];
X=[a];
X=[a,b];
X=[a,b,c];
X=[a,b,c,d];
no

Logic
prefix(X,[a,b,c,d]):- append(X,_,[a,b,c,d]).


--------------------------------------
SUFFIX
suffix(S,L):-append(_,S,L).
X=[a,b,c,d];
X=[a,b,c];
X=[a,b];
X=[a];
X=[];
no


-----------------------------------
Definition Of a Sublist/2
sublist(Sub,List):-suffix(Suffix,List),prefix(Sub,Suffix). 


Which of the following goals is the most efficient way to concatenate
the lists?
?- append([a,b,c,d,e,f,g,h,i],[j,k,l],R).
?- append([j,k,l],[a,b,c,d,e,f,g,h,i],R).

---------------------------------

Reversing a List
using append/3

Naive Recursive
1. If we reverse an Empty List we will get an Empty List
2. If we reverse the list[H|T], This will result in reversing T and concat H to the end

Contoh
consider List[a,b,c,d].
Reverse dapet [d,c,b] di tambah head [a] jadi [d,c,b,a]

naiveReverse([],[]).
naiveReverse([H|T],R):-naiveReverse(T,RT),append(RT,[H],R).

---------------------------------------
Reverse using accumolator

accReverse([],L,L).
accReverse([H|T],Acc,Rev):-accReverse(T,[H|Acc],Rev).

Reverse(L1,L2):-accReverse(L1,[],L2).

Illustrating Accumolator
List:[a,b,c,d]          Accumolator:[]
List:[b,c,d]            Accumolator:[a]
List:[c,d]              Accumolator:[b,a]
List:[d]                Accumolator:[c,b,a]
List:[]                 Accumolator:[d,c,b,a]











