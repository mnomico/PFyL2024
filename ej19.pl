/*
Predicado que relaciona una lista L1 y un número N, menor o igual que la longitud de L1, con el enésimo elemento de L1.
?- enesimo(4, [a, b, c, d, e, f, g, h, i, j], X).
X = d
*/

% Caso base. Si el elemento a buscar es el primero, entonces retorna la cabeza de la lista.
enesimo(1, [Elemento | _], Elemento).

% Función principal. Se decrementa el número y se descarta la cabeza hasta que se llegue al caso base.
enesimo(Numero, [_ | Resto], Elemento):-
    NuevoNumero is Numero - 1,
    enesimo(NuevoNumero, Resto, Elemento).
