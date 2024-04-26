/*
Predicado que vincula un número decimal, la nueva base y la lista formada por los dígitos que representan el mismo número en la nueva base.
?- enBase(67, 2, L).
L = [1, 0, 0, 0, 0, 1, 1]
*/

% Caso base. Cuando el número a procesar es 0, el resultado es la lista de restos que se obtuvo hasta ese momento.
enBaseAux(0, _, Resultado, Resultado):- !.

% Se divide el número por su base, se toma su resto y se concatena a una lista donde se guardan todos los restos. Luego se hace la llamada recursiva
% Pasando como parámetro la división entera del número por su base.
enBaseAux(Numero, Base, ListaResultado, Resultado):-
    Resto is Numero mod Base,
    NuevoNumero is Numero // Base,
    enBaseAux(NuevoNumero, Base, [Resto | ListaResultado], Resultado).

%Función principal donde se pasan los parámetros y una lista vacía para almacenar los restos.
enBase(Numero, Base, Resultado):-
    enBaseAux(Numero, Base, [], Resultado).
