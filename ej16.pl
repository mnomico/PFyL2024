/*
Predicado que relaciona una lista L1 y un número N, con otra lista L2, con los elementos de L1 menos los primeros N.
?- menosn(4, [a, b, c, d, e, f, g, h, i, j], X).
X = [e, f, g, h, i, j]
*/

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta manera es mas corta, pero utiliza el !. para cortar antes el proceso.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

menosn(0, L2, L2):- !.

menosn(N, [_ | ColaL1], L2):-
    NuevoN is N - 1,
    menosn(NuevoN, ColaL1, L2).

%%%%%%%%%%%%%%
% Otra manera
%%%%%%%%%%%%%%

% Caso base.
menosn(_, [], []).

% Cuando ya se eliminaron los elementos deseados, se concatena el resto de los elementos a la lista a retornar.
menosn(0, [X | Resto], [X | ListaMenos]):-
    menosn(0, Resto, ListaMenos).

% Mientras la cantidad de elementos a eliminar sea mayor a 0, se van descartando los elementos de la cabeza de la lista a procesar y se decrementa la cantidad.
menosn(Cantidad, [_ | Resto], ListaMenos):-
    Cantidad > 0,
    NuevaCantidad is Cantidad - 1,
    menosn(NuevaCantidad, Resto, ListaMenos).
