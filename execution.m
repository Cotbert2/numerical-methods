funcion = @(x) exp(x.^2);
I_aprox = integral(funcion,0,0.5);
I_real = 0.544987104184;

error_absoluto = abs(I_real - I_aprox);
error_relativo = abs(error_absoluto/I_real);

cifras_significativas = floor(-log10(error_absoluto)) + 1;

disp("Aprox value of the function:")
disp(I_aprox)
disp("Exact value: ")
disp(I_real)
disp("Abs eror:")
disp(error_absoluto)
disp("Relative error:")
disp(error_relativo)
disp("sigfig:")
disp(cifras_significativas)
