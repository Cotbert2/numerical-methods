function[result] =  multip(A,B)
    c = A(:,2);
    r = B(:,3);
    result = c .* r;
    disp(result)
end