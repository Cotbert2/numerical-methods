syms t;
f(t) = 6 + 2.13*t.^2 - 0.0013*t.^4;
tol = 10.^(-5);

I = [-1 , 2];


tol = 0.01;
err = abs(I(1) - I(2));

i = 2;

while err > tol
    I(i + 1) = I(i) - (I(i) - I(i -1 ))*f(I(i))/(f(I(i)) - f(I(i - 1)));
    err = abs(f(I(end)));
    i = i + 1;
end


disp(I(end))



fprintf('t = %f metros \n',t);