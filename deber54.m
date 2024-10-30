%@authors: Mateo Garcia
syms x;
y = log(x.^2 - 2) + 1./exp(-x + 2);


y_prime = diff(y,x);

values = -2;

e = 0.1;
err = 100;
i = 1;
while err > e
    values( i + 1 ) = values(i) - (double(subs(y,x,values(i))))/(double(subs(y_prime,x,values(i))));
    err = abs((values(i + 1) - values(i))/values(i + 1)) * 100;
    i = i  + 1;
end

fprintf("root's value: %.3f\n", values(end));
fprintf("error: %.5f\n", err);
