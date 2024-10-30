function x = Met_LU(n)
format short
% Construcción de la matriz A

A = zeros(n);
for i = 1:n
    for j = 1:n
        if i == j
            A(i, j) = 3*i + 1;
        else
            A(i, j) = 1 / (i + j - 1);
        end
    end
end

% Construcción de la matriz b
b = 2 * ones(n, 1);

% Mostramos A
disp('A = ')
disp(" ")
disp(A)
disp(" ")
% Mostramos B
disp('b = ')
disp(" ")
disp(b)
disp(" ")

% Solución del sistema Ax=b con el método LU

n = size(A, 1);
L = eye(n);

for i = 1:n
    for j = i+1:n
        factor = A(j, i) / A(i, i);
        L(j, i) = factor;
        A(j, :) = A(j, :) - factor .* A(i, :);
    end
end

U = A;
% Mostramos L
disp('L = ')
disp(" ")
disp(L)
disp(" ")
% Mostramos U
disp('U = ')
disp(" ")
disp(U)
disp(" ")

d = zeros(n, 1);
for i = 1:n
    d(i) = (b(i) - L(i, 1:i-1) * d(1:i-1)) / L(i, i);
end

x = zeros(n, 1);
for i = n:-1:1
    x(i) = (d(i) - U(i, i+1:n) * x(i+1:n)) / U(i, i);
end

disp('Comprobación b=A*x: ')
format long
b

fprintf("Solución: \n")
fprintf('  x =  %.5f \n',x)
end

Met_LU(5)