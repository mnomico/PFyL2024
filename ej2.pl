/*
Predicado que vincula una lista de números enteros, con la cantidad de números naturales que contiene.
?- naturales([6, -7, -4, 3, 2, 8], X).
 	X = 4
*/

% Caso base. Cuando la lista es vacía, la cantidad de elementos es 0.
naturales([], 0).

% Si el número a procesar no es natural, no se incrementa el contador.
naturales([X | Resto], Cantidad):-
    X =< 0,
    naturales(Resto, Cantidad).

% Función principal recursiva. Si el número a procesar es natural, se incrementa el contador.
naturales([X | Resto], Cantidad):-
    X > 0,
    naturales(Resto, Contador),
    Cantidad is Contador + 1.
