function [x] = gaussJordanFunction(A, b)
    % Authors: Mateo Jaren Galarza
    % Define an extended matrix of coefficients and results
    % Generate an identity matrix to get the solutions in the last column
    % Finally, check if the system has solutions or not by evaluating the rank

    aux = A;
    A = [A b];
    
    sizeB = size(A, 1);

    rankA = rank(A(:, 1:end-1));
    rankCoef = rank(A);
    [r, c] = size(A);

    if rankA < rankCoef
        disp("The system has no solutions")
    elseif rankA == rankCoef
        if rankCoef == c - 1
            disp("The system has finite solutions")
        else
            disp("The system has infinite solutions")
        end
    end
    
    for current = 1:sizeB
        A(current, :) = A(current, :) / A(current, current);
        for i = 1:sizeB
            if i ~= current
                A(i, :) = A(i, :) - A(current, :) * A(i, current);
            end
        end
    end

    x = A(:, end);
end
