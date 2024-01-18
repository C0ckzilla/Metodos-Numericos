function [x_opt, f_opt] = golden_section_search_max(f, a, b, tol)
    % Constante de la sección dorada
    phi = (sqrt(5) - 1) / 2;

    % Inicialización
    c = b - phi * (b - a);
    d = a + phi * (b - a);
    fc = -f(c);  % Negamos f para encontrar el máximo
    fd = -f(d);  % Negamos f para encontrar el máximo

    % Bucle principal
    while abs(b - a) > tol
        if fc < fd
            b = d;
            d = c;
            fd = fc;
            c = b - phi * (b - a);
            fc = -f(c);  % Negamos f para encontrar el máximo
        else
            a = c;
            c = d;
            fc = fd;
            d = a + phi * (b - a);
            fd = -f(d);  % Negamos f para encontrar el máximo
        end
    end

    % Devuelve el punto medio del intervalo final y el valor de la función allí
    x_opt = (a + b) / 2;
    f_opt = -f(x_opt);  % Negamos f para obtener el valor máximo
end

% Define la función
f = @(x) 2 * sin(x) - x.^2 / 10;

% Encuentra el máximo en el intervalo [0, pi]
[x_opt, f_opt] = golden_section_search_max(f, 0, pi, 1e-6);

% Muestra los resultados
disp(['El máximo se encuentra en x = ', num2str(x_opt)])
disp(['El valor máximo es f(x) = ', num2str(f_opt)])

