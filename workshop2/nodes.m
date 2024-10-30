% Problema fuerzas estructura reticulada
% Incógnitas F1 F2 F3 F4 F5 F6 F7 H V1 V2

% Coeficientes:
format long
F1 = 0;
F2 = 0;
F3 = 0;
F4 = 0;
F5 = 0;
F6 = 0;
F7 = 0;
H = 0;
V1 = 0;
V2 = 0;

% Ángulos en grados
angle1 = 45;
angle2 = 70;
angle3 = 60;

% Sistema Ax=b
A = [
    sind(45), 0, 0, 0, 0, 0, 0, 0, 1, 0;
    cosd(45), 1, 0, 0, 0, 0, 0, -1, 0, 0;
    -sind(45), 0, -sind(70), 0, 0, 0, 0, 0, 0, 0;
    cosd(45), 0, cosd(70), -1, 0, 0, 0, 0, 0, 0;
    0, 0, sind(70), 0, sind(60), 0, 0, 0, 0, 0;  
    0, 0, -cosd(70), 0, -cosd(60), -1, 0, 0, 0, 0; 
    0, 0, 0, sind(60), 0, sind(70), 0, 0, 0, 0;
    0, 0, 0, -cosd(60), 0, -cosd(70), 0, 0, 0, 0;
    0, 0, 0, 0, 0, sind(70), -1, 0, 0, 0;
    0, 0, 0, 0, 0, -cosd(70), 0, 0, 0, 0;
];


b = [0; 0; 250; 0; 0; 0; 0; 250; 0; 0];

% Método de Gauss parcial
function [x] = gauss(A,B
A = [A B]; % matriz ampliada 

% Proceso de eliminación hacia adelante
n = size(A, 1);
for i = 1:n-1
    % Haciendo ceros debajo del pivote i
    for j = i+1:n
        factor = A(j, i) / A(i, i);
        A(j, :) = A(j, :) - factor * A(i, :);
    end
end

for i = 1:n
        if all(A(i, 1:n) == 0) && A(i, end) ~= 0
            disp('Sin solución');
            x = [];
            return;
        end
end

 % Verificación de filas de ceros (posibles infinitas soluciones)
if rank(A(:, 1:n)) < n
        disp('Infinitas soluciones');
        x = [];
        return;
end

% Proceso de sustitución hacia atrás
x = zeros(n, 1);
for i = n:-1:1
    x(i) = (A(i, end) - A(i, i+1:n) * x(i+1:n)) / A(i, i);
end

% Muestra la solución
disp('La solución del sistema es:');
disp(x);


%%%%%%

disp('1. Comprobación b=A*x')
disp(A*x)

disp('2. Valores de las fuerzas')
F1 = x(1)
F2 = x(2)
F3 = x(3)
F4 = x(4)
F5 = x(5)
F6 = x(6)
F7 = x(7)
H = x(8)
V1 = x(9)
V2 = x(10)
disp('')

disp('3. Fuerzas en el Nodo 2')
disp('Eje x:')
fprintf(' F1x= %.2f N\n', F1 * cosd(45))
fprintf(' F3x= %.2f N\n', F3 * cosd(70))
fprintf(' F4= %.2f N\n', F4)
disp('Eje y:')
fprintf(' F1y= %.2f N\n', F1 * sind(45))
fprintf(' F3y= %.2f N\n', F3 * sind(70))