x = [1, 2, 3, 4, 5, 6];
y = [0.0000, 0.6931, 1.0986, 1.3863, 1.6094, 1.7918];
x_point = 1.5;
actual_value = 0.4055;

% a) Polinomios de mínimos cuadrados fk(x)
for k = 1:5
    p = polyfit(x, y, k);
    y_est = polyval(p, x_point);
    error = (actual_value - y_est)^2;
    printf("Grado %d, Polinomio fk(%f) = %f, Error = %f\n", k, x_point, y_est, error);
end

% b) Interpolación utilizando interpolación de Newton
function c = newton_coeffs(x, y)
    n = length(x);
    c = zeros(n, 1);
    c(1) = y(1);

    for j = 2:n
        for i = n:-1:j
            y(i) = (y(i) - y(i - 1)) / (x(i) - x(i - j + 1));
        end
        c(j) = y(j);
    end
end

function y = newton_eval(c, x_data, x)
    n = length(x_data);
    y = c(n);
    for i = n-1:-1:1
        y = y .* (x - x_data(i)) + c(i);
    end
end

c = newton_coeffs(x, y);

for k = 1:5
    y_est = newton_eval(c(1:k), x(1:k), x_point);
    error = (actual_value - y_est)^2;
    printf("Grado %d, Interpolación ^fk(%f) = %f, Error = %f\n", k, x_point, y_est, error);
end

