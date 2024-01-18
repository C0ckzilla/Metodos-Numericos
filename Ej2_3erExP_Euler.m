function Ej2_3erExP_Euler()

  % Definimos la función que representa la ecuación diferencial
f = @(x, y) -4*x^3 - 24*x^2 + 10*x + 5.8;

% Definimos las condiciones iniciales y los parámetros del problema
x0 = 0;
y0 = 1;
h = 0.5; % tamaño de paso
xf = 4; % valor final de x

% Inicializamos las variables que almacenarán los valores de x y y
x = x0:h:xf;
y = zeros(1, length(x));
y(1) = y0;

% Implementamos el método de Runge-Kutta de cuarto orden
for i = 1:(length(x) - 1)
    k1 = h*f(x(i), y(i));
    k2 = h*f(x(i) + h/2, y(i) + k1/2);
    k3 = h*f(x(i) + h/2, y(i) + k2/2);
    k4 = h*f(x(i) + h, y(i) + k3);
    y(i + 1) = y(i) + (k1 + 2*k2 + 2*k3 + k4)/6;
end

% Imprimimos los resultados
disp('Los valores de x y y son:')
disp([x; y])


  end
