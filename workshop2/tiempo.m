%@authors: Mateo Jaren Garcia Galarza
timeGauss = zeros(1,4);
timeLU = zeros(1,4);
timeInv = zeros(1,4);

operations = [3 10 100 200];

%3x3 system
[A_3x3, B_3x3] = randomSystem(3);
tic;
gauss(A_3x3, B_3x3);
timeGauss(1) = toc;
tic;
LU(A_3x3, B_3x3);
timeLU(1) = toc;
tic;
metodoInversa(A_3x3, B_3x3);
timeInv(1) = toc;

%10x10 system
[A_10x10, B_10x10] = randomSystem(10);

tic;
gauss(A_10x10, B_10x10);
timeGauss(2) = toc;
tic;
LU(A_10x10, B_10x10);
timeLU(2) = toc;
tic;
metodoInversa(A_10x10, B_10x10);
timeInv(2) = toc;

%100x100 system
[A_100x100, B_100x100] = randomSystem(100);

tic;
gauss(A_100x100, B_100x100);
timeGauss(3) = toc;
tic;
LU(A_100x100, B_100x100);
timeLU(3) = toc;
tic;
metodoInversa(A_100x100, B_100x100);
timeInv(3) = toc;


%200x200 system
[A_200, B_200] = randomSystem(200);

tic;
gauss(A_200, B_200);
tic;
timeGauss(4) = toc;
tic;
LU(A_200, B_200);
timeLU(4) = toc;
tic;
metodoInversa(A_200, B_200);
timeInv(4) = toc;

format long

timeGauss
timeLU
timeInv
hold on;
plot(operations, timeGauss, '-o', 'DisplayName', 'Método de Gauss');
plot(operations, timeInv, '-s', 'DisplayName', 'Método de la inversa');
plot(operations, timeLU, '-^', 'DisplayName', 'Método de descomposición LU');
xlabel('Número de variables');
ylabel('t(s)');
title('Eficiencia de los métodos');
legend;
grid on;
hold off;