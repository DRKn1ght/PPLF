lista_v(L) :- lista_v(L, 0).

lista_v([], _).
lista_v([A], _).
lista_v([A, B | LS], 0) :-
    A > B,
    lista_v([B | LS], 1).
    
lista_v([A, B | LS], 1) :-
    A < B,
    lista_v([B | LS], 0).
