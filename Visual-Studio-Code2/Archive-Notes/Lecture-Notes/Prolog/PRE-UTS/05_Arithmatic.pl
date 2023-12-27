4 is 2 + 2.
1true
2 + 2 is 4.
false

Polog's Arithmatic is reverse

3 is mod(7,4).
1true

tambahTigaKaliDua(X,Y):- Y is (X+3)*2.
tambahTigaKaliDua(3,12).
1true

tambahTigaKaliDua(3,Result).
Result = 12
 +, -, /, *  These Are Integers
 X = 3 + 2.
X = 3+2

Prolog uses prefix math notation
?-is(Total,+(3,6)).
Total = 9;

--------------------------------------
Arithmatic in List
len([],0).
len([_|L],N):-len(L,X), N is X + 1.

?-len([a,b,c],X).
X = 3
-------------------------------
Accumolator :
Variable that hold intermideate values
-------------------------------
Acclen 3
- Len Finder
- Len of the list or an Integers
- Accumolator for the value for the length

------------------------------
The accumolotor of acclen/3
- Innitaly the value of an accumolator is 0
- Add 1 to accumolator to recursively take the head of the list 
- When we reach that the list is empty we know how long it is

Accumolator length:
acclen([], Acc, Length):- Length = Acc.
acclen([_|L], OldAcc, Length):- NewAcc is OldAcc + 1, acclen(L,NewAcc,Length).

--

acclen([], A , N):- N = A.
acclen([_|L], OldA , N ):- NewA is OldA + 1 , acclen(List, NewA , N).

---

                                                             acclen([], Acc, Acc).
acclen([_|Back], OldAcc, LengthHold):- NewAcc is OldAcc + 1, acclen([Back],NewAcc,LengthHold).

----------------
acclen([], Acc , Acc).
acclen([_|List], OldAcc, Length):- NewAcc is OldAcc + 1, acclen(List,NewAcc,Length).
acclen([1,2,3,4,5],0,Len).
Len = 5


acclen([],acc,acc).
acclen([_|List],OldAcc,Length):-NewAcc is OldAcc + 1,acclen(List,NewAcc,Length).
Length(List,Length):-acclen(List,0,Length).


accaalen([], Acc , Acc).
accaalen([_|List], OldAcc, Length):- NewAcc is OldAcc + 1, accaalen(List,NewAcc,Length).
findPanjang(L,N):-accaalen(L,0,N).
findPanjang([1,2,3,4,5],X).
X = 5

--------------------------
Define a predicate increment/2 that holds only
when its second argument is an integer one larger than
its first argument. For example, increment(4,5)
should hold, but increment(4,6) should not. 

?-increment(4,5).
True
?-increment(4,6).
False

Exercise :
increment(X,Y):- Y is X + 1.

increment(A,6).
Arguments are not sufficiently instantiated
In:
   [1] 6 is _1706+1


increment(X,Y):- X - 1 = Y + 1.
%X + 1 = y
%Y - 1 = X
Hard Solution



Comparing Integers
y >= x
y = x   |  y =:= x

Same funtion as is
arity on the left is 2
so 2 + 1 > 9 + 1 can't be calculated

isItOdd(X):- mod(X,2) =\= 0.
isItPositive(X):- X > 0.
positiveOdd(X):-isItOdd(X),isItPositive(X).


----------------------------------------------------
Comparing Numbers
1. Making a predicate that takes two arguments, and its true when :
    - First is a list of Integers
    - Second is the highest int in the list
Tip : use an acumulator

accMax([],Acc,Acc).
accMax([_|List],Acc,Max):- Acc > Max 