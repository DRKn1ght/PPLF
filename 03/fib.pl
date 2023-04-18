fib(0, 0).
fib(1, 1).
fib(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fib(N1, F1),
    fib(N2, F2),
    F is F1 + F2.

fib(N, F) :-
    N >= 0,
    fib(N, 0, 1, F).

fib(0, Acc1, _, Acc1).
fib(N, Acc1, Acc2, F) :-
    N > 0,
    N1 is N - 1,
    Sum is Acc1 + Acc2,
    fib(N1, Acc2, Sum, F).

% 1 1 2 3 5 8 13