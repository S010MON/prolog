parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(tom,bob).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

female(pam).
female(liz).
female(ann).
female(pat).

male(bob).
male(tom).
male(jim).

mother(X,Y):- parent(X,Y), female(X).
father(X,Y):- parent(X,Y), male(X).

grandparent(X,Z):- parent(X,Y), parent(Y,Z).
