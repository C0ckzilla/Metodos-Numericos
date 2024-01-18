% OCTAVIO ANTONIO JUÁREZ ROMERO
pkg load optim
% Coeficientes de la función objetivo
f = [-1.75; -1.25];

% Matriz de coeficientes de las desigualdades
A = [1.2 2.25; 1 1.1; 2.5 1];

% Lado derecho de las desigualdades
b = [14; 8; 9];

% Límites para las variables
lb = [0; 0];

% Llamada a la función linprog
[x, fval] = linprog(f, A, b, [], [], lb, []);

% Imprimir resultados
x
ej_1fval = -fval

