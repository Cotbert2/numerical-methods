%@authors: Mateo Garcia
% Define the function
f = @(x) (x + 1) ./ (3 * x.^2 + 2 * x + 1);

% Define the interval and the points for interpolation
x_points = linspace(0, 5, 5); % 5 points for a 4th order polynomial
y_points = f(x_points);

% Lagrange Interpolation
n = length(x_points);
L = @(x, j) prod((x - x_points([1:j-1 j+1:n])) ./ (x_points(j) - x_points([1:j-1 j+1:n])), 2);
P = @(x) sum(arrayfun(@(j) y_points(j) * L(x, j), 1:n));

% Calculate the error for increments of 0.2 in x
x_eval = 0:0.2:5;
y_eval = f(x_eval);
P_eval = arrayfun(P, x_eval);
error = y_eval - P_eval;

% Plot the error distribution
figure;
plot(x_eval, error, '-o');
xlabel('x');
ylabel('Error E(x)');
title('Error distribution of the Lagrange interpolation');
grid on;

% Display the interpolation points and error
disp('Interpolation Points:');
disp(table(x_points', y_points', 'VariableNames', {'x', 'y'}));

disp('Error at increments of 0.2 in x:');
disp(table(x_eval', error', 'VariableNames', {'x', 'Error'}));
