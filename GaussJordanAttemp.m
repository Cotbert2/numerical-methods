clear
clc
A = [-0.04 0.04 0.12; 0.65 -1.56 0.32; -0.24 1.24 -0.28 ];
b = [3 1 0]';
A = [A b]

x = [0 0 0]

tempo = A(2,:);
A(2,:) = A(1, :);
A(1,: ) = tempo;

A

A(2,:) = A(2,:) - A(1,:)*A(2,1)/A(1,1);
A(3,:) = A(3,:) - A(1,:)*A(3,1)/A(1,1);

A

A(3,:) = A(3,:) - A(2,:)*A(3,2)/A(2,2);

A

x(3) = A(3,4) / A(3,3);
x(2) = (A(2,4) - A(2,3))*x(3)/A(2,2);
x(1) = (A(1,4) - A(1,3)*x(3) - A(1,3)*x(2))/ A(1,1);
x