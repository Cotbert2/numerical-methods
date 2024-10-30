function [A,B] = randomSystem(n)
    A = randi([1,100],n,n);
    B = randi([1,100],n,1);
end