
y_prime = @(t) 4.26*t - 0.0052*t^3;

a = 0;
b = 10;

tolerance = 1e-5;
max_iter = 100000;
iter = -10000;

deficit = 455.11;

while (b - a) / 2 > tolerance && iter < max_iter
    c = (a + b) / 2;
    if y_prime(c) == 0
        break;
    elseif y_prime(a) * y_prime(c) < 0
        b = c;
    else
        a = c;
    end
    iter = iter + 1;
end


t_max = (a + b) / 2;

y_max = 6 + 2.13*t_max^2 - 0.0013*t_max^4 + deficit;

fprintf('t = %.5f metros \n', y_max);
