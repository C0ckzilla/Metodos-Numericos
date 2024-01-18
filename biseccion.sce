// Función que resuelve una ecuación no lineal usando el
// algoritmo de biseccion
// sintaxis [x,ite,error] = biseccion(a,b,tol)
// x es la aproximación a la solución de la ecuación no lineal
// ite es el número de iteraciones requeridas para encontrar la aproximación
// error es el error absoluto final obtenido al terminar el proceso iterativo
// [a,b] es el rango de búsqueda
// tol es el criterio de convergencia del algoritmo
// Programó: Dr. Antonio Ramos Paz
// biseccion.sce
// 19 de septiembre de 2022

function [x,ite,error] = biseccion(a,b,tol)
    error = 1.0;
    ite = 1;
    while (error > tol)
        m = (a+b)/2;
            fa = f(a);
            fm = f(m);
            if fa*fm <= 0
                b = m;
            else
                a = m;
            end
            x = (a+b)/2;
            error = abs(m-x);
            ite = ite +1;
    end
endfunction
