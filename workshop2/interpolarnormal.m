%identificamos nuestra pre imagenes
syms x;
%px = a2*(x^2) +a1*x+a0;
x0 = 1; y0 = 0
x1 = 2; y1 = 3
x2 = 3; y2 = 9
%a partir de la solucion encontramos nuestro polinomio


t = zeros(3,3);
t(:,1) = [1;1;1];
t ( : , 2 ) = [x0;x1;x2]
for c = 1: 3
for j = 3: 3
t(c,j) = t ( c , j-1 ).^2;
end
end
disp ( " Ma triz con cada elemento elevado al cuadrado : " )
disp ( t )

B = [0; 3; 9]
A = [t B];
coef = Inversa(t,B);

polinomio = coef(3)*(x.^2) +coef(2)*x+coef(1);
disp(polinomio)
xval = linspace(-10,10);
yval = double(subs(polinomio,x,xval));

figure;
plot(xval,yval,'LineWidth',2);
title("Grafica");