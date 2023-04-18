% invertida([1, 2, 3], [3, 2, 1])
% invertida([1, 2, 3, 4, 5], [5, 4, 3, 2, 1])
% invertida([2], [2])
% invertida([2, 1], [1, 2])

invertida([], []).
invertida(L, Y) :-
    L = [A | LS],
    invertida(LS, R),
    append(R, [A], Y).

% 2 3 4 5 1
% 3 4 5 2 1
% 4 5 3 2 1
% 5 4 3 2 1

eh_igual([],[]).
eh_igual(A, B) :-
    A = [X | AS],
    B = [Y | BS],
    X = Y,
    eh_igual(AS, BS).

% palindromo([1, 2, 2, 1])
palindromo(L) :-
    invertida(L, LI),
    eh_igual(L, LI).