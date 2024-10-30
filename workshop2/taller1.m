%@author: Mateo Garcia

originalTable = [100 1.6958 2506.7 2676.2;150 1.9364 2582.8 2776.4;200 2.172  2658.1 2875.3;250 2.406  2733.7 2974.3;300 2.639  2810.4 3074.3;400 3.103  2967.9 3278.2;500 3.565  3131.6 3488.1;];

splinesLineales(:,1) = originalTable(1,1):25:originalTable(end,1);
for i = 2:4
    splinesLineales(:,i) = interp1(originalTable(:,1)', originalTable(:,i)', splinesLineales(:,1)')';
end

splineCubicos(:,1) = originalTable(1,1):25:originalTable(end,1);
for i = 2:4
    splineCubicos(:,i) = interp1(originalTable(:,1)', originalTable(:,i)', splineCubicos(:,1)', 'spline')';
end

error(:,1) = splinesLineales(:,1);
for i = 2:4
    error(:,i) = abs(splinesLineales(:,i) - splineCubicos(:,i));
end


disp('Propiedades de vapor a 0.1MPa (Interp. lineal)')
fprintf('  Temp     v        u        h\n')
fprintf('  gra_C    m^3/kg   kJ/kg    kJ/kg\n')
fprintf('%6.0f %8.4f %8.1f %8.1f\n',splinesLineales')
disp('')%línea de espacio
disp('  Propiedades de vapor a 0.1MPa (Interp. cúbica)')
fprintf('  Temp     v        u        h\n')
fprintf('  gra_C    m^3/kg   kJ/kg    kJ/kg\n')
fprintf('%6.0f %8.4f %8.1f %8.1f\n', splineCubicos')
disp('')%línea de espacio
fprintf(' E_Temp    E_v       E_u      E_h\n')
fprintf('  gra_C     m^3/kg     kJ/kg   kJ/kg\n')
fprintf('%6.0f %9.4f %8.1f %8.1f\n', error')