// Función que resuelve una ecuación no lineal usando el
// algoritmo de la falsa posición, regla falsa o regula falsi
// sintaxis [x,ite,error] = regula_falsi(a,b,tol)
// wn es la aproximación a la solución de la ecuación no lineal
// ite es el número de iteraciones requeridas para encontrar la aproximación
// error es el error absoluto final obtenido al terminar el proceso iterativo
// [a,b] es el rango de búsqueda
// tol es el criterio de convergencia del algoritmo
// Programó: Dr. Antonio Ramos Paz
// regula_falsi.sce
// 21 de septiembre de 2022

function [wn,ite,error] = regula_falsi(a,b,tol)
    error = 1.0;
    w0 = (f(b)*a-f(a)*b)/(f(b)-f(a));
    if (f(a)*f(w0)) <= 0
            b = w0;
    else
            a = w0;
    end
    ite = 1;
    while (error > tol)
        wn = (f(b)*a-f(a)*b)/(f(b)-f(a));
        if (f(a)*f(wn)) <= 0
            b = wn;
        else
            a = wn;
        end
        error = abs(wn-w0);
        w0 = wn;
        ite = ite + 1;  
    end    
endfunction
    
