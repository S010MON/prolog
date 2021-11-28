% Get the length of the list.
list_length([],0).
list_length([_|TAIL],N) :- list_length(TAIL,N1), N is N1 + 1.

% Check if a element is a member of the list.
list_member(X,[X|_]).
list_member(X,[_|TAIL]) :- list_member(X,TAIL).

% Concatonate two lists.
list_concat([],L,L).
list_concat([X1|L1],L2,[X1|L3]) :- list_concat(L1,L2,L3).

% Remove an element from the list.
list_delete(X, [X], []).
list_delete(X,[X|L1], L1).
list_delete(X, [Y|L2], [Y|L1]) :- list_delete(X,L2,L1).

% Insert into a list (uses delete).
list_insert(X,L,R) :- list_delete(X,R,L).

% Permeutate all possible lists.
list_perm([],[]).
list_perm(L,[X|P]) :- list_delete(X,L,L1),list_perm(L1,P).
