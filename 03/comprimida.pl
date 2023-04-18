% comprimida([1, 1, 2, 3, 4, 4, 5], [1, 2, 3, 4, 5]).
comprimida([], []).
comprimida([X], [X]).
comprimida([A, A | LS], [A | RS]) :-
    comprimida(LS, RS).

comprimida([A, B | LS], [A, B | RS]) :-
    dif(A,B),
    comprimida(LS, RS).