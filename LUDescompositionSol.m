function x = LUDescompositionSol(A,B)
    [nrow, ncol] = size(A);
    if nrow ~= ncol || ncol ~= size(B,1)
        error("Ingrese una matrix cuadrada y una matriz de coficientes de la misma dimension")
    else
        fprintf("Matrix %d x %d ingresada\n ", ncol, ncol)
    end
end