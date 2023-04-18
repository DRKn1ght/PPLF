%% and(?A, ?B, ?C) is non det
%  Verdadeiro se C é o resultado
%  do and lógico entre A e B, onde
%  A, B, C é 0 ou 1.
and(0, 0, 0).
and(0, 1, 0).
and(1, 0, 0).
and(1, 1, 1).

%% not(?A, ?B) is non det
%  Verdadeiro se B é a negação de A
%  onde A e B é 0 ou 1.
not(0, 1).
not(1, 0).

%% or(?A ?B ?C) is non det
% Verdadeiro se C é o resultado
% do ou lógico entre A e B, onde
% A, B e C são 0 ou 1.
or(0, 0, 0).
or(0, 1, 1).
or(1, 0, 1).
or(1, 1, 1).

%% nand(?A, ?B, ?C) is non det
%  Verdadeiro de C é o resultado
%  do nand lógico entre A e B, onde
%  A, B, C são 0 ou 1.
nand(A, B, C) :-
    and(A, B, X),
    not(X, C).

%% circuito(?A, ?B, ?C, ?D) is non det
%  Verdadeiro se D é o resultado do circuito
%  exemplo.

circuito(A, B, C, D) :-
    nand(A, B, NAND),
    or(B, C, OR),
    and(NAND, OR, D).