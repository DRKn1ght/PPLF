fatores_primo(1, []).

fatores_primo(N, R) :-
    R = [F|Fs],
    fator_primo(N, F),
    N1 is N // F,
    fatores_primo(N1, Fs),
    !.

fator_primo(N, F) :-
    fator_primo(N, 2, F).

fator_primo(N, F, F) :-
    N mod F =:= 0.

fator_primo(N, F, R) :-
    F < N,
    F1 is F + 1,
    fator_primo(N, F1, R).
