/*
Predicado que relaciona dos vectores de igual dimensión con su producto escalar. Las coordenadas de cada vector son elementos de una lista.
?- producto([2,1,3],[2,2,1],N).
N = 9
*/

% Caso base. Si las listas son vacías, el producto entre ellas es 0.
producto([], [], 0).

% Función principal recursiva. Se van apilando las cabezas de los vectores.
% Luego de llegar al caso base, se suman los productos de las cabezas y el resultado
% es retornado en Resultado.
producto([X | Vector1], [Y | Vector2], Resultado):-
    producto(Vector1, Vector2, Acumulador),
    Resultado is Acumulador + (X * Y).