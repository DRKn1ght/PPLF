% dobrada([a, b, c, a, b, c])

dobrada(L) :-
    append(X, Y, L),
    append(_, X, Y),
    X = Y.
