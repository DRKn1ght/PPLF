% insere_fim([1, 2, 3], 5, [1, 2, 3, 5])
% insere_fim([3, 2], 3, [3, 2, 3])
% insere_fim([], 5, [5])
insere_fim([], X, [X]).
insere_fim(L, X, Y) :-
    L = [A | LS],
    Y = [A | YS],
    insere_fim(LS, X, YS).