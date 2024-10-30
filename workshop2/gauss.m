function [x] = gauss(A,B)
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

end