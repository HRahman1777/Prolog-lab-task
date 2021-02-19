man(adam).
man(peter).
man(paul).

woman(marry).
woman(eve).

parent(adam,peter). % means adam is parent of peter
parent(eve,peter).
parent(adam,paul).
parent(marry,paul).

father(F,C):-man(F),parent(F,C).

mother(M,C):-woman(M),parent(M,C).

is_father(F):-father(F,_).

is_mother(M):-mother(M,_).

son(S,P):-man(S),parent(P,S).

daughter(D,P):-woman(D),parent(P,D).

siblings(A,B):-parent(P,A),parent(P,B),A\=B.
