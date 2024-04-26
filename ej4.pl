/*
Predicado que vincula una lista numérica, con la suma de sus elementos.
?- suma([6, 7, 4, 3, 2, 8], X).
 	X = 30
*/

% Caso base. Si la lista es vacía, la suma de los elementos es 0.
suma([], 0).

% Función principal recursiva. 
suma([X | Resto], Resultado):-
    suma(Resto, Acumulador),
    Resultado is Acumulador + X.