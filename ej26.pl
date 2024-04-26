/*
Escribir un predicado que relacione una lista con las palabras que forman un número menor de 1000 escrito en letras con el número en sí.
?- deNombreANumero([ciento, cuarenta, y, dos], N).
N = 142.
?- deNombreANumero([doscientos, dieciseis], N).
N = 216.
*/

% Base de hechos
palabraANumero(ciento, 100).
palabraANumero(cuarenta, 40).
palabraANumero(dos, 2).
palabraANumero(doscientos, 200).
palabraANumero(dieciseis, 16).
palabraANumero(y, 0).

% Caso base. Cuando la lista es vacía, el número es 0.
deNombreANumero([], 0).

% Funcion principal recursiva.
deNombreANumero([X | Resto], NumeroFinal):-
    deNombreANumero(Resto, Numero),
    palabraANumero(X, NumeroTraducido),
    NumeroFinal is Numero + NumeroTraducido.
