%@authors: Mateo Garcia
syms x;
y = 2*x.^3 - 11.7 *x.^2 +17.7*x -5;

initialValue = 3;

y_prime = diff(y,x);

values = 3;

e = 0.001;
err = 100;
i = 1;
while err > e
    values( i + 1 ) = values(i) - (double(subs(y,x,values(i))))/(double(subs(y_prime,x,values(i))));
    err = abs((values(i + 1) - values(i))/values(i + 1)) * 100;
    i = i  + 1;
end

fprintf("root's value: %.3f\n", values(end));
fprintf("error: %.5f\n", err);

fplot(matlabFunction(y), [-20,20])
hold on
plot(values(end), 0 , 'ro', 'MarkerSize', 10, 'LineWidth', 2);
xlabel("Plot by Mateo Garcia");
