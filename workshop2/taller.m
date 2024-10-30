% Datos proporcionados
temperatura = [100 150 200 250 300 350 400 450 500];
volumen_especifico = [1.6958 1.9364 2.172 2.3986 2.639 2.873 3.103 3.34 3.565];
energia_interna = [2506.7 2582.8 2658.1 2733.7 2810.4 2887.6 2967.9 3048.4 3131.6];
entalpia = [2676.2 2776.4 2875.8 2975.3 3074.8 3174.6 3275.6 3377.0 3488.1];

% Nuevas temperaturas para interpolación
temperatura_nueva = 100:25:500;

% Interpolación lineal
volumen_especifico_lineal = interp1(temperatura, volumen_especifico, temperatura_nueva, 'linear');
energia_interna_lineal = interp1(temperatura, energia_interna, temperatura_nueva, 'linear');
entalpia_lineal = interp1(temperatura, entalpia, temperatura_nueva, 'linear');

% Interpolación cúbica
volumen_especifico_cubica = interp1(temperatura, volumen_especifico, temperatura_nueva, 'spline');
energia_interna_cubica = interp1(temperatura, energia_interna, temperatura_nueva, 'spline');
entalpia_cubica = interp1(temperatura, entalpia, temperatura_nueva, 'spline');

% Errores absolutos
E_volumen = abs(volumen_especifico_lineal - volumen_especifico_cubica);
E_energia = abs(energia_interna_lineal - energia_interna_cubica);
E_entalpia = abs(entalpia_lineal - entalpia_cubica);

% Mostrar resultados
disp('Propiedades de vapor a 0.1MPa (Interp. lineal)')
fprintf('  Temp     v        u        h\n')
fprintf('  gra_C    m^3/kg   kJ/kg    kJ/kg\n')
fprintf('%6.0f %8.4f %8.1f %8.1f\n', [temperatura_nueva; volumen_especifico_lineal; energia_interna_lineal; entalpia_lineal]);
disp('') % línea de espacio

disp('Propiedades de vapor a 0.1MPa (Interp. cúbica)')
fprintf('  Temp     v        u        h\n')
fprintf('  gra_C    m^3/kg   kJ/kg    kJ/kg\n')
fprintf('%6.0f %8.4f %8.1f %8.1f\n', [temperatura_nueva; volumen_especifico_cubica; energia_interna_cubica; entalpia_cubica]);
disp('') % línea de espacio

fprintf(' E_Temp    E_v       E_u      E_h\n')
fprintf('  gra_C    m^3/kg   kJ/kg    kJ/kg\n')
fprintf('%6.0f %9.4f %8.1f %8.1f\n', [temperatura_nueva; E_volumen; E_energia; E_entalpia]);