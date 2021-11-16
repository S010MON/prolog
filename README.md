# Prolog


#### Installation

    $ sudo apt install swi-prolog
    
#### Running

    $ swipl
    
#### Syntax

    .           # Termination of statement
    r(a,b)      # Relation (lower case)
    X           # Variable (upper case)

#### Commands

Adding a relation to the knowledge base:

        assert(parent(pam, bob)).

List all of the relations in the given relation:

        listing(parent).
