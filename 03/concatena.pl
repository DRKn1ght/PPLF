% concatena([], [2], [2])
% concatena([2, 3], [4, 5], [2, 3, 4, 5])
% concatena([5], [1, 2, 3], [5, 1, 2, 3])

concatena([], Y, Y).
concatena(L, X, Y) :-
    L = [A | LS],
    Y = [A | YSS],
    concatena(LS, X, YSS).