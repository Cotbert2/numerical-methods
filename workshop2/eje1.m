%@authors: Garcia,Parra,Yepez
A = [ 4 2  1; 2 5 -2; 1 -2  7]

B = [23 29 0]'


%Solution with Gauss
disp("1) Solucion del sistema usando Gauss")
gauss(A,B);
%Solution with Gauss-Jordan
disp("2) Solucion del sistema usando Gauss-Jordan")
gaussJordan(A,B);
%Solution with inv
disp("3) Solucion del sistema usando el metodo de la inversa")
metodoInversa(A,B);
%Solution with Gauss-Seidel
disp("4) Solucion del sistema usando Gauss-Seidel")
Gaussseidel(A,B,0.0001);