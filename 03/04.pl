% maximo([1, 5, 3], 5).
% maximo([1, 2, 3], 3).
% maximo([5, 3, 2], 5).

maximo2([X], X).
maximo2(L, Y) :-
    L = [A, B | XS],
    (A >= B -> 
        maximo2([A | XS], Y);
        maximo2([B | XS], Y)).


maximo([X], X).
maximo([A, B | XS], Y) :-
    A >= B,
    maximo([A | XS], Y),
    !.
maximo([A, B | XS], Y) :-
    A < B,
    maximo([B | XS], Y),
    !.