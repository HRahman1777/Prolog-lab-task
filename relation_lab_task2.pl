/*
 * Artificial Intelligence Lab Task 2
 * hierarchical relation
*/
male(a).
male(b).
male(c).
male(d).
male(e).
male(f).
male(g).
male(h).
male(i).
male(j).
male(k).
male(l).
male(m).
male(n).


female(z).
female(y).
female(x).
female(w).
female(v).
female(u).
female(t).
female(s).
female(q).
female(p).
female(o).
female(w2).
female(v2).
female(u2).
female(t2).
female(s2).


parent(a, d).
parent(a, w).
parent(a, v).

parent(z, d).
parent(z, w).
parent(z, v).


parent(b, e).
parent(b, f).
parent(b, u).

parent(y, e).
parent(y, f).
parent(y, u).


parent(c, g).
parent(c, t).
parent(c, s).

parent(x, g).
parent(x, t).
parent(x, s).


parent(d, h).
parent(e, i).
parent(e, q).
parent(f, p).
parent(f, o).
parent(g, j).

parent(u, h).
parent(v, i).
parent(v, q).
parent(t, p).
parent(t, o).
parent(u, j).


parent(h, k).
parent(h, w2).
parent(h, v2).

parent(q, k).
parent(q, w2).
parent(q, v2).


parent(i, l).
parent(i, m).
parent(i, u2).

parent(p, l).
parent(p, m).
parent(p, u2).


parent(j, n).
parent(j, t2).
parent(j, s2).

parent(o, n).
parent(o, t2).
parent(o, s2).


son(X, Y):-
    male(X), parent(Y, X).

mother(X, Y):-
    parent(X, Y), female(X).

father(X, Y):-
    parent(X, Y), male(X).

spouse(X, Y):-
    parent(X, Z), parent(Y, Z),  X\=Y.

sibling(X, Y):-
    parent(Z, X), parent(Z, Y), female(Z), X\=Y.

cousin(X, Y):-
    parent(A, X), parent(B, Y), sibling(A, B).

grand_daughter(X, Y):-
    female(X), parent(Z, X), parent(Y, Z).

father_in_law(X, Y):-
    male(X), spouse(Y, Z), parent(X, Z).
