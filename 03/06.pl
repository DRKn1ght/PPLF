% removido_em([a, b, c, d], X, 2, R).
removido_em([], _, _, []).

removido_em(L, X, I, R) :-
    I =:= 0,
    L = [A | LS],
    A = X,
    R = LS.

removido_em(L, X, I, R) :-
    I > 0,
    L = [A | LS],
    R = [A | RS],
    I0 is I - 1,
    removido_em(LS, X, I0, RS).