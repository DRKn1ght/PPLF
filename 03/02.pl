% pares([1, 2, 3, 4], [2, 4])
% pares([2, 4, 5, 6], [2, 4, 6])
% pares([2], [2])
% pares([1], [])
:- begin_tests(pares).

test(t0) :- pares([], []).
test(t1) :- pares([1, 2, 3, 4, 5], [2, 4]).
test(t2) :- pares([5], []).
test(t2, T == [6]) :- pares([6], T).

:- end_tests(pares).


pares([], []).
pares(X, Y) :-
    X = [A|L],
    A mod 2 =:= 0,
    Y = [A|P],
    pares(L, P),
    !.

pares(X, P) :- 
    X = [A|L],
    A mod 2 =\= 0, 
    pares(L, P).
