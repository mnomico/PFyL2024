/*
Predicado "estaEntre", que vincula dos números enteros "m" y "n", con la lista de los enteros mayores o iguales que "m" y menores o iguales que "n".
?- estaEntre(2, 5, L).
L = [2, 3, 4, 5]
*/

% Caso Base. Cuando se llega a N, el último elemento de la lista a retornar es N.
estaEntre(N, N, [N]).

% Función principal recursiva. Se van apilando los números desde M hasta N hasta llegar al caso base.
% Luego se van concatenando en la lista a retornar
estaEntre(M, N, [M | Resto]):-
    M =< N,
    NuevoM is M + 1,
    estaEntre(NuevoM, N, Resto).
