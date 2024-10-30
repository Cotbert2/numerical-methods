%@authors Mateo Garcia
% The Secant Method is an iterative numerical technique for finding the roots of a nonlinear function.
% It approximates the root by repeatedly drawing secant lines between points on the function and using
% the x-intercept of these lines as the next approximation.
%
% Steps of the Secant Method:
% 1. Choose two initial approximations x0 and x1 that are close to the root.
% 2. Compute the function values f(x0) and f(x1).
% 3. Use the formula to find the next approximation:
% 4. Update x0 and x1: Set x0 = x1 and x1 = x2.
% 5. Repeat steps 2-4 until the difference between successive approximations is smaller than a specified tolerance,
%    or a maximum number of iterations is reached.
%
% The Secant Method does not require the calculation of derivatives and can converge faster than the Bisection Method.
% However, it requires good initial guesses and may fail to converge if the function is not well-behaved.

%Implement the sec method to get the roots of a function
function [root] = secMethod(x_1, x_2)

    x_values(1) = x_1;
    x_values(2) = x_2;

    syms x;
    y = x.^3 + 2 * x.^2 + 10 * x - 20;

    i = 1;
    err = Inf;

    while err >= 1
        r = ((x_values(i) * double(subs(y, x_values(i + 1)))) - (x_values(i + 1) * double(subs(y, x_values(i))))) / (double(subs(y, x_values(i + 1))) - double(subs(y, x_values(i))));
        x_values(i + 2) = r;
        err = (abs(r - x_values(i + 1)) / abs(r)) * 100;
        i = i + 1;
    end

    %Finally implemnts a plo
    fplot(y, [-20,20]);
    hold on;
    plot(x_values, 0 , 'ro', 'MarkerSize', 10, 'LineWidth', 2);
    root = x_values(end)

end
