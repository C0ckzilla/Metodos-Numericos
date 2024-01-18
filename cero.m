function z = cero(x0)
for k = 1: 100
xnva = x0 - f(x0)/df(x0);
x0 = xnva;
fprintf("Iteracion \%d f(\%f) = \%f\n", k, x0, f(x0));
if(abs(f(x0)) < 0.00001) break; end;
end;
z =x0;
function y = f(x)
y = x-cos(x);
function dy = df(x)
dy = 1+sin(x);
