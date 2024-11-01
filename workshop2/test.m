%@authors: Mateo Garcia

% A 10x10
A = [
    -8,  5, -6,  4,  1, -8,  2, -7,  3, -3;
    -7, -5, -5,  3, -3, -2,  3, -1,  2,  9;
    -3,  5, -4, -2,  2, -1,  4,  7, -6, -7;
    -2, -4,  5,  8, -7, -1,  2, -6, -5, -4;
    -8, -8,  2, -2, -7, -5,  1, -5,  5, -1;
     5,  6,  7, -5, -6,  4,  2,  4,  9,  5;
     6, -4,  9,  8,  6,  2, -5,  6, -5, -3;
    -3,  5, -6, -2,  8, -4, -3,  4, -8, -1;
    -1,  7, -2,  4, -8,  4, -9, -5, -6, -3;
    -6, -1, -4, -5, -8,  8,  8, -5, -7,  4
];

b = [85,-109, 201, -62, -37, -27, 38, 258, 77, -101]';

x = LU(A, b);
disp('Systems solution 10x10:');
disp(x);