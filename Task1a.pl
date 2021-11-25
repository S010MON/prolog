connected(a,b).
connected(b,d).
connected(c,d).
connected(f,c).
connected(e,d).
connected(e,g).
connected(h,g).
connected(g,f).

path(X,Y):- connected(X,Y).
path(X,Z):- connected(X,Y), path(Y,Z).

path(A,B,X):- .
