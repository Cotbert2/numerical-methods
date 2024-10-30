%@authors: Mateo Garcia

syms x;
f(x) = -12 -21 * x + 18 * x.^2 - 2.4 *x.^3;

solutions =[];

initialValues = [ 1 , 3; 1.5 , 2.5; 1.5, 2.25];
for i = 1 : 3
    initialValues(i , :);
    x_n = initialValues(i , 2);
    x_n_1 = initialValues(i , 1); 
    %sec
    for iteration = 1 : 4
        newValue = double(x_n - ((x_n - x_n_1)/(f(x_n) - f(x_n_1)) * f(x_n)));
        x_n_1 = x_n;
        x_n = newValue;
    end
    fprintf("root's value: %.4f\n", x_n);
    solutions(end + 1) = x_n;
end

solutions

fprintf("the minor root's: %.5f\n", min(solutions));

