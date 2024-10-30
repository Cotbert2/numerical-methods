function [root] = bisectionMethod (xa,xb)
    %@authors: Mateo Garcia
    %This function calculate the roots of a function with bisection method
    %take the limits of an interval to start
    % The Bisection Method is a simple and robust numerical technique for finding the roots of a nonlinear function.
    % It works by repeatedly narrowing down an interval that contains a root.
    %
    % Steps of the Bisection Method:
    % 1. Choose two initial points a and b such that f(a) and f(b) have opposite signs, i.e., f(a) * f(b) < 0.
    % 2. Compute the midpoint c of the interval [a, b]:
    %    c = (a + b) / 2
    % 3. Evaluate the function at the midpoint, f(c).
    % 4. Determine the subinterval [a, c] or [c, b] that contains the root:
    %    - If f(a) * f(c) < 0, then the root lies in [a, c]; set b = c.
    %    - If f(b) * f(c) < 0, then the root lies in [c, b]; set a = c.
    % 5. Repeat steps 2-4 until the interval [a, b] is sufficiently small or the function value at the midpoint
    %    is close enough to zero (within a specified tolerance).
    %
    % The Bisection Method is guaranteed to converge to a root if the initial interval is chosen correctly.
    % It converges linearly and is slower than methods like Newton-Raphson, but it does not require the calculation of derivatives
    % and is very reliable for well-behaved functions.

    evaluation = 1;

    while(evaluation > 0)
        x = 0;
        xr = (xa + xb)/2;
        x = xr;
        y_xr = x.^4 + 3*x.^3 - 2;
        x = xa;
        y_xa = x.^4 + 3*x.^3 - 2;

        evaluation = y_xr .* y_xa;
    
        if(evaluation > 0)
            xa = xr;
        end
    end
    fprintf("The root is\n");
    format long
    xr
    x = linspace(-20, 100, 20);
    y = x.^4 + 3*x.^3 - 2;
    %Finally represents with a graphic
    plot(x,y);
    hold on;
    plot(xr, 0 , 'ro', 'MarkerSize', 10, 'LineWidth', 2);
    root = xr

end