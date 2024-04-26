/*
Predicado cuyos sujetos son dos listas, y que es verdadero cuando la primera lista es un subconjunto de la segunda.
 
?- subconjunto([d, a, b], [m, b, f, r, d, a]).
YES
?- subconjunto([d, a, b], [m, k, f, r, d, a]).
FAIL
*/

% Si el elemento estoy buscando en la lista se encuentra en la cabeza de la segunda lista, es verdadero.
esSubconjunto(X, [X | _]).

% Si el elemento que estoy buscando no es igual a la cabeza de la lista, hago una llamada recursiva pasando como parámetros el elemento y el resto de la lista para seguir buscando.
esSubconjunto(X, [_ | Resto]):-
    esSubconjunto(X, Resto).

% Caso base.
subconjunto([], _).

% Función principal recursiva. Compruebo que cada elemento de la primer lista se encuentre en la segunda lista.
subconjunto([X | RestoX], Lista2):-
    esSubconjunto(X, Lista2),
    subconjunto(RestoX, Lista2).
