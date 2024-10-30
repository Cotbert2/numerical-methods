function [U,L] = descomposicionLU(A,B)

n = size(A,1);
L = eye(n)

for i = 1:n
    for j = i+1:n
        factor = A(j, i) / A(i, i);
        L(j,i) = factor;
        A(j, :) = A(j, :) - factor .* A(i, :);
    end
end

U = A;
disp(U)
disp(L)

C = L * U;
disp("La matriz multiplicada es: ")
disp(C)

d = zeros(n,1);
for i = 1:n
    d(i) = (B(i)-L(i,1:i-1)*d(1:i-1))/L(i,i);
end
d

x = zeros(n,1);
for i = n:-1:1
    x(i) = (d(i)-U(i,i+1:n)*x(i+1:n))/U(i,i);
end
x

disp("Metodo de Gauss-Seidel")
X = inv(A)*B;
X

end