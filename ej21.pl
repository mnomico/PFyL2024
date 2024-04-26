/*
Predicado que relaciona una lista numérica con el menor de sus elementos.
?- menor([6, 8, 2, 3, 7, 4, 9, 5], X).
X = 2
*/

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esto funciona pero no es muy eficiente
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Caso base. Si la lista tiene un solo elemento, ese elemento es el menor.
menor([X], X).

% Si la cabeza de la lista es menor al siguiente, entonces X es el menor.
menor([X | Resto], X):-
    menor(Resto, MenorActual),
    X < MenorActual.

% Si la cabeza es mayor o igual al siguiente, entonces el siguiente es el menor.
menor([X | Resto], MenorActual):-
    menor(Resto, MenorActual),
    X >= MenorActual.