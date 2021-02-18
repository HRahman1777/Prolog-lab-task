wizard(ron).

wizard(X):-
    hasBroom(X), hasWand(X).



hasWand(harry).
player(harry).
hasBroom(X):- player(X).


/* get error in here
wizard(ron).
hasWand(harry).
quidditchPlayer(harry).

wizard(X) :- hasBroom(X),hasWand(X).
hasBroom(X) :- quidditchPlayer(X).

 */
