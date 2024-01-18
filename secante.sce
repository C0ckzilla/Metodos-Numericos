function [x2,ite,error] = secante(x0,x1,tol)
    error = 1.0;
    ite = 0;
    while (error > tol)
        x2 = x1 - (x1-x0)*f(x1)/(f(x1)-f(x0));
        error = abs(x2-x1);
        x0 = x1;
        x1 = x2;
        ite = ite + 1;
    end
endfunction
