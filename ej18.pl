/*
Predicado que relaciona un número N y una lista numérica ordenada L1, con otra lista numérica ordenada L2, formada con los elementos de L1 y el número N.
?- insertado(6, [2, 3, 7, 9, 15], X).
X = [2, 3, 6, 7, 9, 15]
*/  

% Caso base. Si la lista es vacía, entonces se inserta N.
insertado(N, [], [N]).

% Si la cabeza es menor o igual al número a insertar, se procesa el siguiente en la lista.
insertado(N, [X | Resto], [X | Lista]):-
    X =< N,
    insertado(N, Resto, Lista).

% Si la cabeza es mayor a N, entonces se inserta en la lista, se concatena el resto que faltaba a procesar y se termina el proceso con !.
insertado(N, [X | Resto], [N, X | Resto]):-
    X > N,
    !.

