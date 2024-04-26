/*
Predicado que relaciona una lista de temperaturas con la cantidad de temperaturas que se encuentran entre los 10º y los 20º.
?- cantidadEntre10y20([15, 20, -2, -3, 14, 32], X).
 	X = 2
*/

% Caso base. Si la lista es vacía, la cantidad de temperaturas entre 10 y 20 es 0.
cantidadEntre10y20([], 0).

% Si la temperatura a procesar está fuera del rango, no se cuenta.
cantidadEntre10y20([X | Resto], Cantidad):-
    (X =< 10; X >= 20),
    cantidadEntre10y20(Resto, Cantidad).

% Si la temperatura está entre 10 y 20, se incrementa el contador.
cantidadEntre10y20([X | Resto], Cantidad):-
    X > 10,
    X < 20,
    cantidadEntre10y20(Resto, Contador),
    Cantidad is Contador + 1.