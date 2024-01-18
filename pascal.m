nr=8; % Numero de renglones del triangulo de Pascal.
n=15; % Numero de espacios en blanco antes del v ́ertice.
x(1)=1;
cad1(1:n)=" ";
fprintf("%s%3.0f\n\n",cad1,x(1)); % vertice del triangulo
for k=2:nr-1;
clear cad1 cad2
num_esp=n-2*k+1;
cad1(1:num_esp)=" ";
clear x
x(1)=1;
for c=2:k;
x(c)=x(c-1)*(k-c+1)/(c-1);
end
fprintf("\%s",cad1)
for c=1:k
fprintf(" \%3.0f",x(c))
end
fprintf("\n\n")
end
