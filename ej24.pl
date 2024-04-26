/*
Se necesita saber el puntaje que suma un Pacman en su recorrido hasta llegar a la terminar el nivel. En su recorrido se puede encontrar con frutas con distinto puntaje y con el activador del bonus 
que duplica todos los puntos de las cosas que coma durante 5 pasos. Escribir un predicado que relacione una lista de objetos que se come el Pacman con el puntaje obtenido. 
Para ello usar la siguiente base de hechos.

puntaje(puntito, 1).
puntaje(frutilla, 10).
puntaje(banana, 30).
puntaje(cerezas, 50).
puntaje(fantasma, 100).

?- puntajePacman([puntito, frutilla, puntito, puntito, banana, puntito, puntito,  fantasma, puntito, puntito, cerezas, puntito], Puntos).
Puntos = 198.

?- puntajePacman([puntito, puntito, puntito, banana, puntito, puntito, bonus, puntito, puntito, fantasma, puntito, puntito, cerezas, puntito], Puntos).
Puntos = 294.
*/

% Base de hechos
puntaje(puntito, 1).
puntaje(frutilla, 10).
puntaje(banana, 30).
puntaje(cerezas, 50).
puntaje(fantasma, 100).

% Predicado para verificar si el objeto actual es bonus
esBonus(bonus).

% Caso base. Cuando no hay más objetos para procesar, a PuntajeFinal (cuarto parámetro) se le asigna el puntaje que se fue acumulando (tercer parámetro)
puntajePacmanAux([], _, PuntajeFinal, PuntajeFinal):- !.

% Suma de puntajes sin bonus activo, cuando el objeto a procesar NO es bonus
puntajePacmanAux([Objeto | ColaObjetos], 0, Puntaje, PuntajeFinal):-
    not(esBonus(Objeto)),
    puntaje(Objeto, PuntajeObjeto),
    PuntajeParcial is Puntaje + PuntajeObjeto,
    puntajePacmanAux(ColaObjetos, 0, PuntajeParcial, PuntajeFinal).

% Inicio el contador Bonus con 5 si el objeto a procesar es bonus
puntajePacmanAux([Objeto | ColaObjetos], 0, Puntaje, PuntajeFinal):-
    esBonus(Objeto),
    puntajePacmanAux(ColaObjetos, 5, Puntaje, PuntajeFinal).

% Suma de puntajes cuando el bonus está activo
puntajePacmanAux([Objeto | ColaObjetos], Bonus, Puntaje, PuntajeFinal):-
    Bonus > 0,
    NuevoBonus is Bonus - 1,
    puntaje(Objeto, PuntajeObjeto),
    PuntajeParcial is Puntaje + (PuntajeObjeto * 2),
    puntajePacmanAux(ColaObjetos, NuevoBonus, PuntajeParcial, PuntajeFinal).

% Función principal
puntajePacman(ListaObjetos, PuntajeFinal):-
    puntajePacmanAux(ListaObjetos, 0, 0, PuntajeFinal).
