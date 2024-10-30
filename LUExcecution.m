A = [2 -1 1; 3 3 9; 3 3 5];
B = [2; -1; 4];

X = LUDescomposition(A, B);
disp('Las soluciones son:');
disp(X);