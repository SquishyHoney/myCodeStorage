man(yuta).
woman(rita).
cursed(rita).
jujutsu.


man(X).
X = yuta
man(jody).
false
man(a).
false
party.
procedure `party' does not exist
lol(test).
procedure `lol(A)' does not exist

-------------------------------------

man(jake).
woman(mia).
party.
playGuitar(mia).

woman(mia).
1true
woman(X).
X = mia
woman(noHave).
false
thiswillbeeror(mia).
procedure `thiswillbeeror(A)' does not exist
-------------------------------------
[AND OR gate]

man(jake).
woman(mia).
skillFull(jake).
guitarLessons(mia).
party.
playGuitar(mia):-skillFull(mia);guitarLessons(mia).


playGuitar(mia).
1true
; = or gate 
, = and gate 
:- = implication
-------------------------------------
[TWO RULES]

woman(mia).
woman(julie).
woman(lisa).
man(jake).

talented(mia).
love(dog,mia).
love(cat,lisa).
love(fish,jake).

woman(A).
A = mia
A = julie
A = lisa
talented(A),woman(A).
A = mia
love(X,A).
A = mia,
X = dog
A = lisa,
X = cat
love(dog,A).
A = mia
love(fish,A),woman(A).
false
love(fish,A);woman(A).
A = jake
A = mia
A = julie
A = lisa

--------------------------------

PROLOG SYNTAX (IMPORTANT)
Terms :

  - Complex Terms 

  - Simple Terms :

      - Variables

      - Constant :

          - Atoms
          - Numbers

Atoms :
 -Start with a lower case (butch,party,big_kahuna,playGuitar)

Special Characters :
 - : 
 - ,
 - ;
 - .
 - :-

Numbers :
 - Intergers :12,-20,12312
 - Floats : 123.12312

Variables :
 - Start with an Upper case (X,Y,VarOne)

Complex terms :
  - Atoms (butch), numbers(123), Variables(X). Are building blocks for Complex Terms
  - Example Of Complex :
    - playGuitar(jody).
    - loves(jake,lisa).
    - jelous(john,X).

Complex terms inside a complex term:
  - hide(X, father(father(father(butch)))).

Arity
 - woman(mia) %Arity of 1
 - love(john,lisa) %Arity of 2
 - father(father(butch)) %Arity of 1
 - Example
   
   playGuitar(mia).
   love(john,lisa).
   talented(mia):-playGuitar(mia).

   playGuitar/1
   love/2
   talented/1