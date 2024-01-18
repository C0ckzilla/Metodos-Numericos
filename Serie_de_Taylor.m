function Serie_de_Taylor()
% Definir la función que representa la expansión de la serie de Taylor
function f = taylorExpansion(x)
    f = -62 + 70*(x - 1) + 69*(x - 1)^2 + 25*(x - 1)^3;
endfunction

% Predecir el valor de la función en x = 2.24999 usando la expansión de la serie de Taylor
predictedValue = taylorExpansion(2.24999);

% Calcular el valor verdadero de la función en x = 2.24999
trueValue = 25*2.24999^3 - 6*2.24999^2 + 7*2.24999 - 88;

% Calcular el error relativo porcentual verdadero
relativeError = abs((trueValue - predictedValue) / trueValue) * 100;

% Imprimir el valor predicho, el valor verdadero y el error relativo porcentual verdadero
fprintf('El valor predicho de la función en x = 2.24999 es %.3f\n', predictedValue);
fprintf('El valor verdadero de la función en x = 2.24999 es %.3f\n', trueValue);
fprintf('El error relativo porcentual verdadero es %.2f%%\n', relativeError);

end
