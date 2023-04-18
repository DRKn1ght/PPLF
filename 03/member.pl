% membro([a, b, c], a).
membro([], []).
membro(L, X) :-
    L = [A | _],
    X = A.

membro(L, X) :-
    L = [A | LS],
    dif(X, A),
    membro(LS, X).
