function [result] =relativeError(x, x_x)
    result = abs(x-x_x)/x;