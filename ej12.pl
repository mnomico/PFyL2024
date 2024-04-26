/*
Predicado que relaciona una lista L1 y un elemento A perteneciente a la misma, con otra lista L2, formada con los mismos elementos de L1, menos A.
?- menos1(d, [a, b, c, d, e, f, g, h, i, j], X).
X = [a, b, c, e, f, g, h, i, j]
*/

% Caso base. 
menos1(_, [], []).

% Si la cabeza de la lista no es el elemento a eliminar, se concatena a la lista sin A y se hace la llamada recursiva.
menos1(A, [X | Resto], [X | ListaSinA]):-
    A \= X,
    menos1(A, Resto, ListaSinA).

% Si la cabeza de la lsita es el elemento a eliminar, se hace la llamada recursiva sin concatenar esa cabeza.
menos1(A, [X | Resto], ListaSinA):-
    A = X,
    menos1(A, Resto, ListaSinA).