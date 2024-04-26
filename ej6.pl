/*
Predicado unario que es verdadero cuando su sujeto es una lista numérica ordenada en forma creciente.
?- ordenada([3, 6, 8]).
 	YES
?- ordenada([6, 3, 8]).
 	FAIL
*/

% Caso base. Si la lista tiene un solo elemento, se puede decir que está ordenada.
ordenada([_]).

% Predicado que comprueba que el elemento anterior a Y es menor o igual.
ordenada(X,Y):-
    X =< Y.

% Función principal recursiva. Se van apilando X e Y. Cuando terminan las llamadas recursivas, se va comprobando
% si los elementos estan ordenados.
ordenada([X, Y | Resto]):-
    ordenada([Y | Resto]),
    ordenada(X, Y).