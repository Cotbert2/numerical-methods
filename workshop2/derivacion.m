%@authors: Mateo Garcia

t = [0, 5, 10, 15, 20]; 
q = [0.6350, 0.5336, 0.4410, 0.3572, 0.2822];
n = length(t);
R = 1; 
r = 0.1; 
g = 9.81; 
gamma = 0.6; 
der_qp = zeros(1, n); 
der_qr = zeros(1, n);
der_qc = zeros(1, n); 
for i = 1:n-1
    der_qp(i) = (q(i+1) - q(i)) / (t(i+1) - t(i));
end
for i = 2:n
    der_qr(i) = (q(i) - q(i-1)) / (t(i) - t(i-1));
end
for i = 2:n-1
    der_qc(i) = (q(i+1) - q(i-1)) / (t(i+1) - t(i-1));
end
Q = -gamma * (r/R)^2 * sqrt(2*g*q);
fprintf("t\t\tQ\t\tder_qp\t\tder_qr\t\tder_qc\n");
for i = 1:n
    fprintf("%d\t\t%.6f\t%.6f\t%.6f\t%.6f\n", t(i), Q(i), der_qp(i), der_qr(i), der_qc(i));
end
figure;
subplot(2,2,1);
plot(t, Q, '-o');
title('Q vs t');
xlabel('t');
ylabel('Q');
subplot(2,2,2);
plot(t, der_qp, '-o');
title('der_qp vs t');
xlabel('t');
ylabel('der_qp');
subplot(2,2,3);
plot(t, der_qr, '-o');
title('der_qr vs t');
xlabel('t');
ylabel('der_qr');
subplot(2,2,4);
plot(t, der_qc, '-o');
title('der_qc vs t');
xlabel('t');
ylabel('der_qc');