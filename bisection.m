clear
clc

syms x;

y = x.^4 + 3 * x.^3 - 2;


I = [ 0 , 1];


condition = 1;

i = 0

while condition > 0
    c = (I(1) + I(2))/2;
    f_c = double(subs(y , x , c ))
    f_x_0 = double(subs(y , x , I(1) ))
    
    condition = f_c .* f_x_0
    
    if condition < 0
        I(2) = c
    else 
        I(1) = c
    end
    i = i + 1;

end

disp(i)
disp(c)





