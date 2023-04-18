% ultimo([1, 2, 3], 3)
% ultimo([2, 3, 5], 5)
% ultimo([5], 5)
% ultimo([], [])
:- begin_tests(ultimo).

test(t0) :- ultimo([], []).
test(t1) :- ultimo([1], 1).
test(t2) :- ultimo([7, 2], 2).
test(t2, T == 3) :- ultimo([7, 2, 3], T).

:- end_tests(ultimo).
ultimo([], []) :- !.
ultimo([X], X) :- !.
ultimo([_ | XS], X) :-
    ultimo(XS, X).