/*
Predicado que relaciona una lista L1 con otra lista L2, con los mismos elementos que L1, pero rotados un lugar a la izquierda.
?- rotada1([a, b, c, d], X).
X = [b, c, d, a]
*/

% Caso base. Cuando se vacía la lista, se pone al primer elemento como el último de la lista.
rotada1([], Y, Y).

% Se va vaciando la lista, apilando los X.
rotada1([X | Resto], Y, [X | ListaRotada]):-
    rotada1(Resto, Y, ListaRotada).

% Función principal que llama a una función recursiva para vaciar la lista, tomando el primer elemento de la lista para moverlo al final.
rotada1([X | Resto], ListaRotada):-
    rotada1(Resto, [X], ListaRotada).