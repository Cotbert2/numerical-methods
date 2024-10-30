function [D] = opera(A)
    B = A([2,4,5],[1,3]);
    C = A(1:2, [2,4,5]);
    D = 2*B - 5*C'
    
end