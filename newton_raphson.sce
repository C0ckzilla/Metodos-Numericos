// Función que resuelve una ecuación no lineal usando el
// algoritmo de Newton-Raphson
// sintaxis [xn,ite,error,errores] = newton_raphson(x0,tol)
// xn es la aproximación a la solución de la ecuación no lineal
// ite es el número de iteraciones requeridas para encontrar la aproximación
// error es el error absoluto final obtenido al terminar el proceso iterativo
// errores es el vector que contiene el error en cada iteración del método
// x0 es la condición inicial o valor cercano a la raíz
// tol es el criterio de convergencia del algoritmo
// Programó: Dr. Antonio Ramos Paz
// newton_raphson.sce
// 21 de septiembre de 2022

function [xn, ite, error,errores] = newton_raphson(x0,tol)
    error = 1.0;
    ite = 0;
    while (error > tol)
        xn = x0 - f(x0)/fp(x0);
        error = abs(xn-x0);
        ite = ite + 1;
        x0 = xn;
        errores(ite) = error;
    end
endfunction
