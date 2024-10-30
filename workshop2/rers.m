function [x, iter, err] = GauSei(A, b, x0, nm, tol)
    % A es la matriz principal
    % b es la matriz columna de términos independientes
    % x0 es la solución supuesta con la que empieza la iteración
    % es un vector columna
    % nm es el número de iteraciones
    % tol es la tolerancia para el error

    format short

    % Mostrar la matriz A y b originales
    disp('A =')
    disp(A)
    disp('b =')
    disp(b)

    % Evaluar si A es DDF (Diag. dominante por filas)
    n = size(A, 1);
    ddf_filas = zeros(n, 1);

    for i = 1:n
        if abs(A(i, i)) < sum(abs(A(i, :))) - abs(A(i, i))
            ddf_filas(i) = 1;
        end
    end

    % Contar cuántas filas no cumplen con ser DDF
    filas_no_ddf = find(ddf_filas);

    if length(filas_no_ddf) > 2
        disp('La matriz no se puede arreglar');
        x = [];
        iter = 0;
        err = NaN;
        return;
    elseif length(filas_no_ddf) == 2
        % Intercambiar filas para intentar hacer la matriz DDF
        disp(['La matriz A no es DDF debido a la fila ' num2str(filas_no_ddf(1))])
        disp(['La matriz A no es DDF debido a la fila ' num2str(filas_no_ddf(2))])
        % Intercambiar las filas
        A([filas_no_ddf(1), filas_no_ddf(2)], :) = A([filas_no_ddf(2), filas_no_ddf(1)], :);
        b([filas_no_ddf(1), filas_no_ddf(2)]) = b([filas_no_ddf(2), filas_no_ddf(1)]);
        disp('Matriz A y b arregladas')
        disp('A =')
        disp(A)
        disp('b =')
        disp(b)
    elseif length(filas_no_ddf) == 1
        % Si hay solo una fila que no cumple, intercambiar con otra fila
        for i = 1:n
            if ddf_filas(i) == 0
                disp(['La matriz A no es DDF debido a la fila ' num2str(filas_no_ddf(1))])
                % Intercambiar las filas
                A([filas_no_ddf(1), i], :) = A([i, filas_no_ddf(1)], :);
                b([filas_no_ddf(1), i]) = b([i, filas_no_ddf(1)]);
                disp('Matriz A y b arregladas')
                disp('A =')
                disp(A)
                disp('b =')
                disp(b)
                break;
            end
        end
    end

    % Gauss-Seidel
    x = x0;
    iter = 0;
    for k = 1:nm
        x_old = x;
        for i = 1:n
            sigma = 0;
            for j = 1:n
                if j ~= i
                    sigma = sigma + A(i, j) * x(j);
                end
            end
            x(i) = (b(i) - sigma) / A(i, i);
        end
        err = max(abs(x - x_old));
        iter = k;
        if err < tol
            break;
        end
    end

    % Comprobación
    disp('Comprobación b=A*x: ')
    disp(b)
    disp('Solución: ')
    fprintf('  x =  \n')
    disp(x)
    disp(['iter = ', num2str(iter)])
    disp(['err = ', num2str(err)])
end


A=[8   1   6; 1   5   7;4   9   2];
b=[1 1 2]';
x0=[0 0 0]';
nm=20;
tol=0.00001;
GauSei(A,b,x0,nm,tol);