%

% Datos
x = [280 650 1000 1200 1500 1700];
y = [32.7 45.4 52.15 53.7 52.9 50.3];

% Cálculo de la longitud de los vectores
x_len = length(x);
y_len = length(y);

% Sumas necesarias para el cálculo
sumx = sum(x);
sumy = sum(y);
sumxy = sum(x .* y);
sumxsq = sum(x .^ 2);

% Cálculo de la pendiente (m) y la intersección (b)
m = (sumxy - (sumx * sumy) / x_len) / (sumxsq - (sumx^2) / x_len);
b = mean(y) - m * mean(x);

% Definición de la función lineal
syms x_a;
f_x = m * x_a + b

% Evaluación de la función en los puntos de x
y_fit = double(subs(f_x, x));

% Cálculo del coeficiente de correlación
r = corrcoef(x, y);
r = r(1, 2);

% Dibujar la gráfica
figure;
hold on;
scatter(x, y, 'filled');
plot(x, y_fit, 'r');
title('Ajuste de mínimos cuadrados');
xlabel('T (K)');
ylabel('Cp (cal/kgmol)');
legend('Datos', 'Ajuste lineal');
hold off;

% Mostrar el coeficiente de correlación
disp('Coeficiente de correlación:');
disp(r);
