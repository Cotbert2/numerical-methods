function y=f(x) %no modifique esta línea
    if(x < 0)
        y = -7.2;
    elseif (x > 1 && x < 2.5)
        y = 5 + 8 * x;
    elseif (x > 15)
        y = log10(x);
  else %complete lo necesario para obtener la respuesta de acuerdo al ejemplo
    y=[];
    fprintf('No existe f(%.2f) \n',x);
  end
  
%no modifique las dos últimas líneas
 y 
end