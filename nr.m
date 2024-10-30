syms x;

y = x.^3 - 2* x - 5;

y_prime = diff(y);


initialValue  = 2


i = 1

while true
    initialValue(i + 1) =round(initialValue(i) -  double(subs(y , x, initialValue(i)))/double(subs(y_prime , x, initialValue(i))),4)
    if(initialValue(i) ==  initialValue(i + 1))
        break
    end
    i = i + 1;
end
disp("root")
disp(initialValue(end))