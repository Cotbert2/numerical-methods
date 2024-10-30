%@authors: Mateo Garcia
syms x;
y = -12 -21 * x + 18 * x.^2 - 2.4 * x.^3;
f(x) = -12 -21 * x + 18 * x.^2 - 2.4 * x.^3;
%graphic method
roots = vpasolve(y == 0 , x)

fplot(matlabFunction(y), [-20,20])
hold on
plot(roots, 0 , 'ro', 'MarkerSize', 10, 'LineWidth', 2);
xlabel("Plot by Mateo Garcia");

x_n = 0;
x_n_1 =-1 ;
%sec
while abs(x_n_1 - x_n) > 0.001
    newValue = double(x_n - ((x_n - x_n_1)/(f(x_n) - f(x_n_1)) * f(x_n)));
    x_n_1 = x_n;
    x_n = newValue;
end
fprintf("root's value: %.4f\n", x_n);