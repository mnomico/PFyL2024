/*
Predicado que relaciona una lista numérica L1, con otra L2, con los mismos elementos que L1, pero con el mayor de ellos en el último lugar.
?- ultimayo([6, 8, 12, 3, 7, 4, 9, 5], X).
X = [6, 8, 3, 7, 4, 9, 5, 12]
*/

%%%%%%%%%%%%%%
% BUSCAR MAYOR
%%%%%%%%%%%%%%

% Caso base. Si la lista tiene un solo elemento, ese elemento es el mayor.
buscarMayor([X], X).

% Si la cabeza de la lista es menor al mayor actual, se ignora.
buscarMayor([X | Resto], Mayor):-
    buscarMayor(Resto, Mayor),
    Mayor > X.

% Si la cabeza de la lista es mayor que el mayor actual, lo reemplaza.
buscarMayor([X | Resto], X):-
    buscarMayor(Resto, Mayor),
    Mayor < X.

%%%%%%%%%%%%
% REEMPLAZAR
%%%%%%%%%%%%

% Caso base. Si la lista es vacía, entonces la lista resultado tiene como elemento solamente al mayor.
% Acá es donde se pone el elemento mayor al final de la lista.
% Hay que poner [] en el tercer parámetro para que quede bien porque sino a prolog le agarra una embolia.
reemplazar([], Mayor, [Mayor]).

% Si la cabeza es igual al mayor elemento, se descarta.
reemplazar([X | Resto], Mayor, ListaResultado):-
    X = Mayor,
    reemplazar(Resto, Mayor, ListaResultado).

% Si la cabeza es diferente al mayor, entonces se agrega al resultado final.
reemplazar([X | Resto], Mayor, [X | ListaResultado]):-
    X \= Mayor,
    reemplazar(Resto, Mayor, ListaResultado).

%%%%%%%%%%%%%%%%%%%
% FUNCIÓN PRINCIPAL
%%%%%%%%%%%%%%%%%%%

% Función principal. Busco el mayor y luego lo uso para reemplazarlo en la lista y concatenarlo al final de ella.
ultimayo(Lista, ListaResultado):-
    buscarMayor(Lista, Mayor),
    reemplazar(Lista, Mayor, ListaResultado).
