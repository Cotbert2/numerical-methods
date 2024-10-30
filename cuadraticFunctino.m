function [yPoints]= cuadraticFunctino(a,b,cp,xPoint)
%Mi funcion grafica ecuaicones cuadraticas po;
for c = 1:size(xPoint)
    yPoints(c) = a*xPoint(c)^2 + b*xPoint(c) + cp;
end

plot(xPoint,yPoints)