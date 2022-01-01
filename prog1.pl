
/* predicate(atom) : fido is a dog */ 
dog(fido).
cat(felix).

/* rule(variable) : X is an animal if X is a dog */
animal(X):-dog(X).
