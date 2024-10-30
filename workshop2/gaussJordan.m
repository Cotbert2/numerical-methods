function [x] = gaussJordan(A,B)
A = [A B];

n = size(A,1);

for i = 1:n
    A(i,:) = A(i,:)/A(i,i);
    for j = i+1:n
        factor = A(j, i) / A(i, i);
        A(j, :) = A(j, :) - factor .* A(i, :);
    end
end

for j = n:-1:2
    for i = j-1:-1:1
        A(i,:) = A(i,:)-(A(i,j)*A(j,:))/A(j,j);
    end
end

disp(A);
x = zeros(n, 1);
for i = n:-1:1
    x(i) = (A(i, end) - A(i, i+1:n) * x(i+1:n)) / A(i, i);
end
disp('La solución del sistema es:');
disp(x);

end