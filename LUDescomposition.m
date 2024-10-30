function [X, Aug, status] = LUDescomposition(A, B, n)
    [m, n] = size(A);
    if m ~= n
        error('La matriz A debe ser cuadrada');
    end
    
    [L, U, P] = lu(A);
    
    Y = L \ (P * B);
    
    X = U \ Y;
end