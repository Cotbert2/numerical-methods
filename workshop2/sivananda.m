
x = [280 650 1000 1200 1500 1700]
y = [32.7 45.4 52.15 53.7 52.9 50.3]

x_len = length(x)
y_len = length(y)

sumx = sum(x);
sumy= sum(y);
sumxy = sum(x.*y);
sumxsq = sum(x.^2);

m = (sumxy - (sumx * sumy)/x_len) / (sumxsq - (sumx.^2)/x_len);

b = mean(y)- m * mean(x)

syms x_a;
f_x = m*x_a + b;
f_x

y_eval = sum(y - subs(f_x,x));


errror = sqrt(1-(y_eval.^2)/sum(y - mean(y_eval)).^2)
errror

