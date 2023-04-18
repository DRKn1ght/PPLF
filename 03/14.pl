num_folhas(vazia, 0).
num_folhas(nodo(_, vazia, vazia), 1).
num_folhas(nodo(_, Esq, Dir), S) :-
    num_folhas(Esq, S1),
    num_folhas(Dir, S2),
    S is S1 + S2.
