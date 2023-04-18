:- use_module(library(clpfd)).

send_more_money([S,E,N,D,M,O,R,Y]) :-
    [S,E,N,D,M,O,R,Y] ins 0..9, % Definir domínio de valores para cada letra
    all_different([S,E,N,D,M,O,R,Y]), % Cada letra deve ter um valor diferente
    S #\= 0, M #\= 0, % As letras S e M não podem ter valor 0
    1000*S + 100*E + 10*N + D + 1000*M + 100*O + 10*R + E #=
    10000*M + 1000*O + 100*N + 10*E + Y, % Restrição da soma correta
    label([S,E,N,D,M,O,R,Y]). % Atribuir valores às letras

