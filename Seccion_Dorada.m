function Seccion_Dorada()

% Definir la función
f = @(x) 2*sin(x) - x.^2/10;

% Definir el intervalo
a = 0;
b = 2*pi;

% Definir la relación de la sección dorada
phi = (sqrt(5) - 1) / 2;

% Inicializar c y d
c = b - phi * (b - a);
d = a + phi * (b - a);

% Bucle hasta que el tamaño del intervalo sea menor que un cierto umbral
while abs(b - a) > 1e-5
    if f(c) < f(d)
        a = c;
        c = d;
        d = a + phi * (b - a);
    else
        b = d;
        d = c;
        c = b - phi * (b - a);
    end
end

% El máximo está en el centro del intervalo final
max_x = (a + b) / 2;
max_f = f(max_x);

% Imprimir el máximo
fprintf('El máximo de la función es %.3f en x = %.3f\n', max_f, max_x);

  end
