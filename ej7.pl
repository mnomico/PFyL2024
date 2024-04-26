/*
Predicado que relaciona una lista cualquiera con el elemento que se encuentra en el último lugar.
?- ultimo([a, b, c, r, f, h], X).
 	X = h
*/

% Caso base. Si la lista tiene un solo elemento, se puede decir que es el último.
ultimo([Ultimo], Ultimo).

% Funcion principal recursiva. Se van apilando las cabezas de la lista hasta que quede un solo elemento, o sea
% el último.
ultimo([_ | Resto], Ultimo):-
    ultimo(Resto, Ultimo).