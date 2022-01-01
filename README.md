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
        true.
        
Query a statement using variables

        parent(X, Y).
        true.
        
Loading a file

        consult('~/git/prolog/FamilyRelations.pl').
        true.
        
 Lists. Formed in two parts [ head | tail ] which is notation for (a.,(b.,(c.,[]))) multiple ways are available to do this:

    [a, b, c] = [x | [b, c] ]

    [a, b, c] = [a, b | [c] ]

    [a, b, c] = [a, b, c | [ ] ]


