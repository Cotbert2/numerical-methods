function [L] = spline_cubico(x,y)

pp = spline(x, y);
L = pp;
coefs= pp.coefs;
coefs

%get the number of intervals
n = length(pp.breaks) - 1;
    
% print ecuations per interval
for i = 1:n
    a = coefs(i, 1);
    b = coefs(i, 2);
    c = coefs(i, 3);
    d = coefs(i, 4);
    
    fprintf('Intervalo [%.2f, %.2f]:\n', pp.breaks(i), pp.breaks(i + 1));
    fprintf('P(x) = %.5f*(x - %.2f)^3 + %.5f*(x - %.2f)^2 + %.5f*(x - %.2f) + %.5f\n', ...
        a, x(i), b, x(i), c, x(i), d);
    fprintf('\n');
end


end