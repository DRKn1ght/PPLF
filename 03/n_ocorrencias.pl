% n_ocorrencias([1, 2, 3, 2, 2, 3], 2, R).
% R = 3

n_ocorrencias([], _, 0).

n_ocorrencias(L, X, R1) :-
    L = [A | LS],
    A = X,
    n_ocorrencias(LS, X, R),
    R1 is R + 1.

n_ocorrencias(L, X, R) :-
    L = [A | LS],
    dif(X, A),
    n_ocorrencias(LS, X, R).
