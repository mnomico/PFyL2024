/*
Predicado que relaciona dos átomos A y B, y dos listas C y D, tal que D es igual a C, pero con el átomo A sustituido por el B, en su primera ocurrencia.
?- sustituida1(d, m, [a, b, c, d, e, f, g, h, i, j], X).
X = [a, b, c, m, e, f, g, h, i, j]
*/

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Éste código en realidad hace lo que pide el ejercicio 14
% Si quisiera que lo haga solamente en la primera ocurrencia hay varias maneras, la que se me ocurre es usar un parámetro como un boolean 
% para determinar si ya se reemplazó en la primera ocurrencia para que después procese el resto de la lista sin importarle si encuentra
% el elemento a reemplazar o no.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Caso base. Cuando se vacía la lista a procesar, se retorna una lista vacía y se concatenan los elementos recursivamente.
sustituida1(_, _, [], []).

% Si la cabeza de la lista es igual a A, se reemplaza por B y se concatena a la lista a retornar.
sustituida1(A, B, [A | RestoC], [B | RestoD]):-
    sustituida1(A, B, RestoC, RestoD).

% Si la cabeza de la lista es diferente a A, se concatena la cabeza a la lista a retornar.
sustituida1(A, B, [C | RestoC], [C | RestoD]):-
    A \= C,
    sustituida1(A, B, RestoC, RestoD).


