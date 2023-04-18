% lista_soma(L, A, YS)
% lista_soma([1, 2, 3, 4], 5, [6, 7, 8, 9])
% lista_soma([5], 3, [8])
% lista_soma([], 3, false)

lista_soma([], _, []).

lista_soma([A], X, [YS]) :-
    YS is A + X.

lista_soma([A | XS], X, [Y | YS]) :-
    Y is A + X,
    lista_soma(XS, X, YS).