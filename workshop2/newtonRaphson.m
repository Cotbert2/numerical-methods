%@authors: Mateo Garcia
%Newton-Raphson method
% The Newton-Raphson Method is an iterative numerical technique for finding the roots of a nonlinear function.
% It uses the derivative of the function to iteratively improve an initial guess for the root.
%
% Steps of the Newton-Raphson Method:
% 1. Choose an initial approximation x0 that is close to the root.
% 2. Compute the function value f(x0) and its derivative f'(x0).
% 3. Use the formula to find the next approximation:
%    x1 = x0 - f(x0) / f'(x0)
% 4. Update x0: Set x0 = x1.
% 5. Repeat steps 2-4 until the difference between successive approximations is smaller than a specified tolerance,
%    or a maximum number of iterations is reached.
%
% The Newton-Raphson Method converges quadratically near the root, making it faster than linear methods like the Secant Method.
% However, it requires the calculation of the derivative and may fail to converge if the initial guess is not close enough
% to the actual root or if the function is not well-behaved.

function [root] = newtonRaphson(intialValue, y)
    %get an initial value and represents it
    syms x;
    y_prime = diff(y);
    x_values(1) = intialValue;
    i = 2;
    while(true)
        x_values(i) = round ( x_values(i - 1) - double(subs(y,x,x_values(i - 1)))/double(subs(y_prime,x,x_values(i - 1))), 4);
        if(x_values(i) == x_values(i -1));
            break;
        end
        i = i + 1;
    end
    %Print values
    disp(x_values)
    %Finally plot the function
    x_space = linspace(-20, 100, 20);
    fplot(matlabFunction(y), [-20,20])
    hold on;
    plot(x_values, 0 , 'ro', 'MarkerSize', 10, 'LineWidth', 2);
    root = x_values(end)



end