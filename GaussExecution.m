%@authors: Mateo Garcia
n = input('Input the size of the matrix: ');
A = zeros(n, n); %initialize matrix B
disp("Input A's coeficients:");


for i = 1:n %getAllData
    for j = 1:n
       A(i, j) = input(sprintf('A(%d,%d): ', i, j));
     end
end
    
B = zeros(n, 1); %initialize matrix B
disp('Input the data of B:');
for i = 1:n
    B(i) = input(sprintf('B(%d): ', i));
end

[X, Aug, status] = gaussJordan(A, B, n); %call function Gauss Jordan

%validate kind of solutions of the system
if status == -1
    disp('The System has no solutions.');
elseif status == 1
    disp('The System has inifinite solutions.');
end