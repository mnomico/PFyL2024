/*
Predicado que relaciona dos listas con una tercera, formada con los elementos de ambas.
?- concatenadas([d, a, b], [m, k, f, r, d, a], X).
X = [d, a, b, m, k, f, r, d, a]
*/

% Caso base. Cuando se vacía la primer lista, se utiliza la segunda lista como base para ir concatenando sobre ella los elementos de la primera.
concatenadas([], Lista, Lista).

% Función principal recursiva, en la cual se van apilando los elementos de la primera lista para luego ser concatenados con la segunda.
concatenadas([X | Resto], Lista2, [X | RestoListaConcatenada]):-
    concatenadas(Resto, Lista2, RestoListaConcatenada).
