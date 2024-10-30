function y = fun_lg(x)
    if (x <= 0)
        error('x must be greater than 0');
    end
    y = sin(x) .* log(1 + x) - x.^2;
end