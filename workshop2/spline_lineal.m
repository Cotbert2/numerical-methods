function spline_lineal(X,Y)
X = input('X = ') %ingrese enforma de vector
Y = input('Y = ')

n = length(X); 
for k=1:n-1
m = (Y(k+1) - Y(k))/(X(k+1)-X(k)); %pendiente de la recta
b = Y(k) - m*X(k);
if b>0
    fprintf('\n %.2f+%.3f \t para x en [%.3f,%.3f]',m,b,X(k),X(k+1))
elseif b<0
    fprintf('\n %.2f-%.3f \t para x en [%.3f,%.3f]',m,abs(b),X(k),X(k+1))
else
    fprintf('\n %.2f \t \t para x en [%.3f,%.3f] \n',m,X(k),X(k+1))
end
end

plot(X,Y,'*k',X,Y)
hold on 
x = input('\nIngrese el valor de x a interpolar: ');
y = interp1(X,Y,x);%EL COMANDO INTERP1
plot(x,y,'*g')