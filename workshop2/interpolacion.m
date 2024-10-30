points = [[1,0]; [2,3]; [3,9]]

x_0 = 1;
x_1 = 2;
x_2 = 3;

y_0 = 0;
y_1 = 3;

%Interpolacion general 
y_2 = 9;

solutions = [y_0 y_1 y_2]';


myMatrix  = zeros(3,3);

firstColum = [x_0 x_1 x_2]';

myMatrix(:,2) = firstColum;
myMatrix(:,3) = ones(3,1);

myMatrix(:,1) =myMatrix(:,2).^2 ;

xSolutions = metodoInversa(myMatrix, solutions)

syms x;


x = linspace(0, 7, 100);

f_x = xSolutions(1) * x.^2 + xSolutions(2) * x + xSolutions(3);

plot(x, f_x)
xlabel('x')
ylabel('f(x)')
title('Gráfica de la función')
hold on
points = [1, 0; 2, 3; 3, 9];
x = points(:, 1);
y = points(:, 2);

plot(x, y, 'o')
grid on


