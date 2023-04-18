%% or(?A ?B ?C) is non det
% Verdadeiro se C é o resultado
% do ou lógico entre A e B, onde
% A, B e C são 0 ou 1.

or(0, 0, 0).
or(0, 1, 1).
or(1, 0, 1).
or(1, 1, 1).
