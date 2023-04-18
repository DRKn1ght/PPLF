% [1 2 3 4 5] = 15

soma_acc(L, R) :-
    soma_acc(L, R, 0).

soma_acc([], Acc, Acc).
soma_acc(L, R, Acc) :-
    L = [A | LS],
    Acc1 is A + Acc,
    soma_acc(LS, R, Acc1).

soma([], 0).
soma(L, R) :-
    L = [A | LS],
    soma(LS, R1),
    R is R1 + A.