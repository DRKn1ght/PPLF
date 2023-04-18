% rotacionada(L, N, R)
% rotacionada([a, b, c, d, e, f, g, h], 3, R).
% R = [d, e, f, g, h, a, b, c]

rotacionada(L, N, R) :-
    length(L, Len),
    Mod is N mod Len,
    rotate_left(L, Mod, R).

rotate_left(L, 0, L).
rotate_left(L, N, R) :-
    N > 0,
    append(Prefix, Suffix, L),
    length(Prefix, N),
    append(Suffix, Prefix, R).
