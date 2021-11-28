
connected(a,b).
connected(b,d).
connected(c,d).
connected(f,c).
connected(e,d).
connected(e,g).
connected(h,g).
connected(g,f).

path(X,Y):- connected(X,Y).
path(X,Z):- connected(X,Y), connected(Y,Z).

path(A,B,[A,B]):- connected(A,B).
path(A,B,[A|Tail]):- connected(A,X), path(X,B,Tail).

common_member(X,L1,L2):- ismember(X,L1), ismember(X,L2).

listsum([],0).
listsum([X|Tail], sum):-listsum(Tail, S), sum is X+S.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This file contains the definition of some useful list operations. %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% 1. Adding an object to a list
% This is just a fact: if we add element X to the list L, the result is a list where X is the head (first element) and L is the tail (remaining elements).
add(X, L, [X | L]).

%%% 2. Deleting an object from a list
% BASE CASE: the result of deleting an element X from a list where X is the head, is a list with all remaining elements (tail).
del(X, [X | Tail], Tail).
% RECURSIVE RULE: the result of deleting an element X from a list with head Y, is a list with the same head Y, but a new tail (Tail1) from which X has been deleted.			
del(X, [Y | Tail], [Y | Tail1]) :-
	del(X, Tail, Tail1).

%%% 3. Checking for membership
% BASE CASE: element X is a member of the list where X is the head.
ismember(X, [X | Tail]).	
% RECURSIVE RULE: element X is a member of a list if it is a member of the list where the head has been removed.		
ismember(X, [Head | Tail]) :-		
	ismember(X, Tail).

%%% 4. Concatenation of two lists
% BASE CASE: the concatenation of an empty list with a list L, is the list L itself.
conc([], L, L).
% RECURSIVE RULE: the concatenation of a list with head X and tail L1, and a list L2, is a list with head X and tail obtained by concatenating L1 and L2.
conc([X | L1], L2, [X | L3]) :-
	conc(L1, L2, L3).

%%% 5. Determining sublist of a list
% S is a sublist of L if L is a concatenation of L1, S and L3 (where L1 and L3 are arbitrary sublists, and S is the sublist we are considering)
issublist(S, L) :-
	conc(L1, L2, L),
	conc(S, L3, L2).

