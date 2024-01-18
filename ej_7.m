% Parte (a)
% Definicion de la funcion
f = @(x) (x - 2)^4;

% Parametros para el algoritmo de Razon Dorada
phi = (1 + sqrt(5))/2;
tol = 1e-6;
a = 1;
b = 5;

while abs(b - a) > tol
    x1 = b - (b - a) / phi;
    x2 = a + (b - a) / phi;
    if f(x1) >= f(x2)
        a = x1;
    else
        b = x2;
    end
end

xmin = (a + b) / 2;

printf("Minimo de la funcion f(x) en el intervalo [1,5] es: %f\n", xmin);

% Parte (b)
% Definicion de la funcion y sus derivadas
f2 = @(x) (x(1) - 2)^4 + (x(1) - 2)^2 * x(2)^2 + (x(2) + 1)^2;
df2 = @(x) [4*(x(1) - 2)^3 + 2*(x(1) - 2)*x(2)^2;
            2*(x(1) - 2)*x(2) + 2*(x(2) + 1)];
ddf2 = @(x) [12*(x(1) - 2)^2 + 2*x(2)^2, 4*(x(1) - 2)*x(2);
             4*(x(1) - 2)*x(2), 2*(x(1) - 2) + 2];

% Inicializacion del metodo de Newton
x = [0; 0]; % Valor inicial
for i = 1:100
    dx = - (ddf2(x) \ df2(x)); % Resolver el sistema lineal
    x = x + dx;
    if norm(dx, inf) < tol, break, end
end

printf("Minimo de la funcion f(x1, x2) es: [%f, %f]\n", x(1), x(2));

