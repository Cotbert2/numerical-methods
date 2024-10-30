syms x ;
f = 3 * exp(x/2);

fprintf("f = 3*e^(x/2)\n")

fd = diff(f,x);
fd_evaluate  = subs(fd,3)
vv = double(fd_evaluate)
h = 0.2;

va = (subs(f,3+h)-subs(f,3))/h;

e_a = abs(vv-va);

e_r = e_a/vv;


e_a
e_r