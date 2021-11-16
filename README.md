# Prolog


#### Installation

    $ sudo apt install swi-prolog
    
#### Running

    $ swipl
    
#### Syntax

    .           # Termination of statement
    ;           # Next example
    r(a,b)      # Relation (lower case)
    X           # Variable (upper case)

#### Commands

Adding a relation to the knowledge base:

        assert(parent(pam, bob)).

List all of the relations in the given relation:

        listing(parent).

Query a statement using constants

        parent(tom, bob).
        true
        
Query a statement using variables

        parent(X, Y).
        
Loading a file

        consult('~/git/prolog/FamilyRelations.pl').
