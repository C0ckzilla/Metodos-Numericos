% OCTAVIO ANTONIO JUAREZ ROMERO
function ej_2 = max_golden_section()
    % Función
    f = @(x) 2 * sin(x) - x.^2 / 10;

    % Límites del intervalo de búsqueda
    a = 0;
    b = pi;

    % Tolerancia
    tol = 1e-6;

    % Constante de la sección dorada
    phi = (sqrt(5) - 1) / 2;

    % Inicialización
    c = b - phi * (b - a);
    d = a + phi * (b - a);
    fc = f(c);
    fd = f(d);

    % Búsqueda de la sección dorada
    while abs(b - a) > tol
        if fc > fd
            b = d;
            d = c;
            fd = fc;
            c = b - phi * (b - a);
            fc = f(c);
        else
            a = c;
            c = d;
            fc = fd;
            d = a + phi * (b - a);
            fd = f(d);
        end
    end

    % Máximo
    x_max = (a + b) / 2;
    f_max = f(x_max);

    % Resultados
    maximo = ['El máximo se encuentra en x = ', num2str(x_max), ' y el valor máximo es f(x) = ', num2str(f_max)];
    disp(maximo);
end

% Llama a la función
max_golden_section();

