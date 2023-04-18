% inserido_em([a, b, d, e], c, 2, R)

:- begin_tests(inserido_em).

test(t0) :- inserido_em([a, b, d], c, 2, [a, b, c, d]).
test(t1) :- inserido_em([], a, 0, [a]).
test(t2, fail) :- inserido_em([], b, 1, _).
test(t3) :- inserido_em([a, b, c], d, 3, [a, b, c, d]).

:- end_tests(inserido_em).

inserido_em([], C, 0, [C]) :- !.
inserido_em(L, X, I, R) :-
    I > 0,
    L = [A | LS],
    R = [A | RS],
    I0 is I - 1,
    inserido_em(LS, X, I0, RS),
    !.

inserido_em(L, X, I, R) :-
    I =:= 0,
    L = [A | LS],
    R = [X, A | LS],
    !.