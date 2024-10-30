function x = LU(A,B)
    [srow, scol] = size(A);
    if (srow ~= scol)
        error('Matrix must be square');
    end

    L = eye(srow);
    U = A;
    
    for k = 1:srow
        if U(k, k) == 0
            error('NULL element at diagonal in (%d, %d)', k, k);
        end
        
        for i = k+1:srow
            L(i, k) = U(i, k) / U(k, k);
            U(i, k:srow) = U(i, k:srow) - L(i, k) * U(k, k:srow);
        end
    end

    y = L \ B;
    
    x = U \ y;
end