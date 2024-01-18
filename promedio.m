x = [3 9 5 8 2]
n = length(x);
suma =0;
max = x(1);
for k=1:n
suma = suma + x(k);
if(max < x(k)); max = x(k); end;
end;
suma = suma/n;
fprintf("El promedio es = \%5.2f\n", suma);
fprintf("El mayor es = \%5.2f\n", max);
