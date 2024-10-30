%@authors: Mateo Garcia
% Datos
t = [0.0 10.0 27.4 42.1]';
s = [61.5 62.1 66.3 70.3]';

% Transformación logarítmica de s
log_s = log10(s);

% Matriz de diseño para el ajuste de segundo grado
X = [ones(size(t)) t t.^2];

% Resolución de los coeficientes a, b y c mediante mínimos cuadrados
coefficients = (X' * X) \ (X' * log_s);
a = coefficients(1);
b = coefficients(2);
c = coefficients(3);

% Valores ajustados
log_s_fit = X * coefficients;
s_fit = 10.^log_s_fit;

% Gráfica de los datos y la función ajustada
figure;
plot(t, s, 'o', 'MarkerFaceColor', 'b'); % Puntos de datos originales
hold on;
t_fit = linspace(min(t), max(t), 100);
X_fit = [ones(size(t_fit')) t_fit' t_fit'.^2];
log_s_fit_curve = X_fit * coefficients;
s_fit_curve = 10.^log_s_fit_curve;
plot(t_fit, s_fit_curve, 'r-', 'LineWidth', 2); % Función ajustada
xlabel('Temperatura (^\circC)');
ylabel('Cantidad de dicromato de potasio (gr)');
title('Ajuste de mínimos cuadrados');
legend('Datos originales', 'Ajuste cuadrático');
grid on;

% Cálculo del coeficiente de correlación manualmente
n = length(log_s);
mean_log_s = mean(log_s);
mean_log_s_fit = mean(log_s_fit);
cov_log_s = sum((log_s - mean_log_s) .* (log_s_fit - mean_log_s_fit));
std_log_s = sqrt(sum((log_s - mean_log_s).^2));
std_log_s_fit = sqrt(sum((log_s_fit - mean_log_s_fit).^2));
correlation_coefficient = cov_log_s / (std_log_s * std_log_s_fit);

% Mostrar resultados
fprintf('Coeficientes del polinomio:\n');
fprintf('a = %.4f\n', a);
fprintf('b = %.4f\n', b);
fprintf('c = %.4f\n', c);
fprintf('Coeficiente de correlación: %.4f\n', correlation_coefficient);
