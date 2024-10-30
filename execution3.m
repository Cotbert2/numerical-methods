%@author: Mateo Jaren Garcia Galarza
% Ejemplo 1: Sistema con solución única
clear
clc
A = [-0.04 0.04 0.12; 0.56 -1.56 0.32; -0.24 1.24 -0.28];
b = [3 1 0]';
x1 = gaussJordanFunction(A, b)

% Ejemplo 2: Sistema con infinitas soluciones
A2 = [1 1 1; 2 2 2; 3 3 3];
b2 = [6; 12; 18];
x2 = gaussJordanFunction(A2, b2)

% Ejemplo 3: Sistema sin solución
A3 = [1 1 1; 1 1 1; 1 1 1];
b3 = [1; 2; 3];
x3 = gaussJordanFunction(A3, b3)