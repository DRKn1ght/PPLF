% sub_lista(L, I, J, S).
% sub_lista([a, b, c, d, e, f, g, h, i, j, k], 3, 6, [d, e, f, g])
:- begin_tests(sub_lista).

test(t0) :- sub_lista([a, b, c, d, e, f, g], 1, 4, [b, c, d, e]).
test(t1) :- sub_lista([a], 0, 0, [a]).
test(t2) :- sub_lista([a, b], 0, 1, [a, b]).
test(t3, fail) :- sub_lista([a, b, c], -1, 2, _).

:- end_tests(sub_lista).

sub_lista([], 0, 0, []) :- !.
sub_lista(L, I, J, S) :-
    I > 0,
    J > 0,
    L = [_ | LS],
    I0 is I - 1,
    J0 is J - 1,
    sub_lista(LS, I0, J0, S),
    !.
 
sub_lista(L, I, J, S) :-
    I =:= 0,
    J > 0,
    L = [A | LS],
    J0 is J - 1,
    S = [A | SS],
    sub_lista(LS, I, J0, SS),
    !.

sub_lista(L, I, J, S) :-
    I =:= 0,
    J =:= 0,
    L = [A | _],
    S = [A],
    !.
