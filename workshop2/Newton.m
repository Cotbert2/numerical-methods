function [p]=Newton(X,Y)

n=length(X);
d=zeros(n);
d(:,1)=Y';


for j=2:n
    for i=j:n
        d(i,j)=(d(i,j-1)-d(i-1,j-1))/(X(i)-X(i-j+1));
    end
end

syms x;

polnew=d(1,1);
p=1

for i=1:n-1
    p=p*(x-X(i));
    polnew=polnew+p*d(i+1,i+1);
end

polnew=expand(polnew);
pretty(polnew)

x=input('insert the value to evaluate in the function: ');
yint=eval(polnew);
fprintf("f(x) = %.3f \n",yint)
hold on
grid on
plot(x,yint,'g*')