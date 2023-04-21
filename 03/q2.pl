alternado([], B, B).
alternado(A, [], A).
alternado([],[],[]).
alternado(A, B, C) :-
    A = [X | AS],
    B = [Y | BS],
    C = [X, Y | CS],
    alternado(AS, BS, CS).