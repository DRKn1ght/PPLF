% duplicada(L, D)
% duplicada([a, b, c, c, d], [a, a, b, b, c, c, c, c, d, d]).
:- begin_tests(duplicada).

test(t0) :- duplicada([a, b, c, c, d, e], [a, a, b, b, c, c, c, c, d, d, e, e]).
test(t1) :- duplicada([a, a], [a, a, a, a]).
test(t2, fail) :- duplicada([a, b, c], [a, a, b, b, c]).

:- end_tests(duplicada).

duplicada([], []).
duplicada(L, D) :-
    L = [A | LS],
    D = [A, A | DS],
    duplicada(LS, DS).