function x = Gaussseidel(A,b,tol)
    esdiagonal = true;
    [n,~] = size(A);
    x = zeros(n,1);
    X_new =  x;
    err = inf;
    N = tril(A);
    P = N - A;

    iteraciones = 0;

    for i = 1:n
        elemento = abs(A(i,i));

        rowsum = sum(abs(A(i,:))) - elemento;

        if elemento < rowsum
            fprintf("No es diagonalmente dominante")
            esdiagonal = false;
            break;
        end
    end

        Ninv = inv(N);
            
              if esdiagonal == true
                while err > tol
                    iteraciones = iteraciones + 1;
                    X_new = Ninv * b + Ninv*P*X_new;
                    err = norm(X_new-x)/norm(X_new);
                    x = X_new;
                end
              end

    fprintf("Con iteraciones de %d : \n",iteraciones);
    disp(x)
end