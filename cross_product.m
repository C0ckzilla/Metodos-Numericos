% Definir los vectores x y y
x = [1, 2, 3];
y = [4, 5, 6];
function z = cross_product(x, y)
    z = [x(2)*y(3) - x(3)*y(2), x(3)*y(1) - x(1)*y(3), x(1)*y(2) - x(2)*y(1)];
endfunction



% Calcular el producto cruz de x y y
z = cross_product(x, y);

% Mostrar el resultado
disp(z);
