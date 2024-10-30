fun = @(x) exp(x.^2);

a = 0;
b = 1/2;

integral_value = integral(fun, a, b);

fprintf('The approximate value of the integral is: %.12f\n', integral_value);