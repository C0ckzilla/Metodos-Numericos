% Definir la función que representa la EDO
function dydx = myODE(x, y)
    dydx = -4*x^3 - 24*x^2 + 10*x + 5.8;
endfunction

% Definir el intervalo de tiempo y el tamaño de paso
x = 0:0.5:4;

% Definir la condición inicial
y = zeros(size(x));
y(1) = 1;

% Resolver la EDO usando el método de Euler
for i = 1:(length(x) - 1)
    y(i+1) = y(i) + 0.5 * myODE(x(i), y(i));
end

% Graficar la solución
plot(x, y);
xlabel('x');
ylabel('y');
title('Solución de la EDO dy/dx = -4x^3 - 24x^2 + 10x + 5.8 con y(0) = 1');

