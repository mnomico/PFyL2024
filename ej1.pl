/*
Predicado que relaciona una lista numérica de dos elementos con otra lista con esos dos elementos 
ordenados de menor a mayor.
*/

/*
ordenados([Cabeza|Cola],[Cabeza|Cola]):-
    Cabeza =< Cola,
    !.

ordenados([Cabeza|Cola],[Cola|Cabeza]):-
    Cabeza > Cola.
*/

% Si los elementos están desordenados, retorna la lista ordenada.
ordenados([N1 | N2], [N2 | N1]):-
    N1 > N2.

% Si los elementos están ordenados, retorna la misma lista.
ordenados([N1 | N2], [N1 | N2]):-
    N1 =< N2.