function [] = cuadraticDerivate(a,b,c)
    syms x;
    y = a*x.^2 + b*x + c;
    %plot(x,y, LineWidth=2);
    yprime = diff(y,x)
    points = [2,3]
    evaluation = double(subs(yprime, x, points))
    plot(points,evaluation)