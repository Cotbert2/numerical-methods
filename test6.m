% Escribir un programa que calcule la probabilidad de un dado de seis caras
N=100000; %este es el numero de tiradas
contandor_2=0;     %inicializamos el contandor
contandor_3=0;
contandor_4=0;
contandor_5=0;
contandor_6=0;
contandor_7=0;
contandor_8=0;
contandor_9=0;
contandor_10=0;
contandor_11=0;
contandor_12=0;
%bucles

for i = 1:N %bucle
    dado1=randi(6);
    dado2=randi(6);
    suma=dado1+dado2;

    if suma==2  %condicional
       contandor_2 = contandor_2 + 1;
    elseif suma == 3
        contandor_3 = contandor_3 + 1;
    elseif suma == 4   
        contandor_4 = contandor_4 + 1;
    elseif suma == 5
        contandor_5 = contandor_5 + 1;
    elseif suma == 6
        contandor_6 = contandor_6 + 1;
    elseif suma == 7
        contandor_7 = contandor_7 + 1;
    elseif suma == 8
        contandor_8 = contandor_8 + 1;
    elseif suma == 9
        contandor_9 = contandor_9 + 1;
    elseif suma == 10
        contandor_10 = contandor_10 + 1;
    elseif suma == 11
        contandor_11 = contandor_11 + 1;
    elseif suma == 12
        contandor_12 = contandor_12 + 1;
    end
end

probabiidad_2=contandor_2/N;
probabiidad_3=contandor_3/N;
probabiidad_4=contandor_4/N;
probabiidad_5=contandor_5/N;
probabiidad_6=contandor_6/N;
probabiidad_7=contandor_7/N;
probabiidad_8=contandor_8/N;
probabiidad_9=contandor_9/N;
probabiidad_10=contandor_10/N;
probabiidad_11=contandor_11/N;
probabiidad_12=contandor_12/N;

x = (2:1:12);
y=[probabiidad_2,probabiidad_3,probabiidad_4,probabiidad_5,probabiidad_6,probabiidad_7,probabiidad_8,probabiidad_9,probabiidad_10,probabiidad_11,probabiidad_12];

plot(x,y, 'LineWidth', 2, 'Color',[0.7,0.2,0.9], 'Marker','*', 'MarkerSize',10);
xlabel('valor obtenido en la suma', 'FontSize',14);
ylabel('probabilidad', 'FontSize',14);
axis([0 14 0 0.5]);


