/*
Escribir un predicado que relaciona tres listas que representan las 3 filas de un tablero de TATETI, con el símbolo que gana la partida.
Nota: El símbolo ""v"" representa que la casilla no es de ninguno de los jugadores porque se ganó el juego antes y quedó vacía.
Nota2: Todas las partidas ingresadas tienen 1 solo ganador. No es necesario controlar ese aspecto.
?- tateti([x,x,x],[o,x,o],[o,o,v], Ganador).
Ganador = x.
?- tateti([o,x,x],[o,x,o],[o,v,x], Ganador).
Ganador = o.
?- tateti([o,x,o],[v,o,x],[o,x,v], o).
true.
*/

% Base de hechos
% Determinar ganador por filas
gana([x, x, x], x).
gana([o, o, o], o).
% Determinar ganador por columnas
gana([x, _, _], [x, _, _], [x, _, _], x ).
gana([_, x, _], [_, x, _], [_, x, _], x ).
gana([_, _, x], [_, _, x], [_, _, x], x ).
gana([o, _, _], [o, _, _], [o, _, _], o ).
gana([_, o, _], [_, o, _], [_, o, _], o ).
gana([_, _, o], [_, _, o], [_, _, o], o ).
% Determinar ganador por diagonales
gana([_, _, x], [_, x, _], [x, _, _], x ).
gana([x, _, _], [_, x, _], [_, _, x], x ).
gana([_, _, o], [_, o, _], [o, _, _], o ).
gana([o, _, _], [_, o, _], [_, _, o], o ).

tateti(Fila1, Fila2, Fila3, Ganador):-
    gana(Fila1, Ganador);
    gana(Fila2, Ganador);
    gana(Fila3, Ganador);
    gana(Fila1, Fila2, Fila3, Ganador).
