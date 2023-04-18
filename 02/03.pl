:- use_module(library(clpfd)).

% Declaração de fatos para o predicado pai
pai(adao, abel).
pai(adao, caim).
pai(adao, sete).
pai(caim, enoque).
pai(enoque, irad).
pai(irad, meujael).
pai(meujael, metusael).
pai(metusael, lameque).
pai(lameque, jabal).
pai(lameque, jubal).
pai(lameque, tubalcaim).
pai(lameque, naama).

% Declaração de fatos para o predicado mae
mae(eva, abel).
mae(eva, caim).
mae(eva, sete).
mae(ada, jabal).
mae(ada, jubal).
mae(zila, tubalcaim).
mae(zila, naama).

% Declaração de fatos para o predicado homem
homem(abel).
homem(sete).
homem(caim).
homem(jabal).
homem(jubal).
homem(tubalcaim).

% Declaração de fatos para o predicado mulher
mulher(naama).

%% eh_homem(+X) is det
% 
% Verdadeiro se X é pai

:- begin_tests(eh_homem).

test(homem_pai) :- eh_homem(adao).
test(homem_nao_pai, fail) :- eh_homem(abel).

:- end_tests(eh_homem).

eh_homem(X) :- pai(X, _).

%% eh_mulher(+X) is det
% 
% Verdadeiro se X é mae

:- begin_tests(eh_mulher).

test(mulher_mae) :- eh_mulher(eva).
test(mulher_nao_mae, fail) :- eh_mulher(naama).

:- end_tests(eh_mulher).

eh_mulher(X) :- mae(X, _).

% X e Y sao irmãos se X e Y têm o mesmo pai ou mesma mae
irmaos(X, Y) :-
    pai(Z, X), pai(Z, Y), X \= Y;
    mae(W, X), mae(W, Y), X \= Y.

% X e Y sao casados se eles tem um filho
casados(X, Y) :-
    pai(X, Z), mae(Y, Z);
    mae(X, Z), pai(Y, Z).

% X é avó de Y
avo(X, Y) :-
    mae(X, Z), 
        (pai(Z, Y); mae(Z, Y)).

% X é irmã de Y
irma(X, Y) :-
    mulher(X),
        (irmaos(X, Y)).

% X é irmão de Y
irmao(X, Y) :-
    homem(X),
        (irmaos(X, Y)).