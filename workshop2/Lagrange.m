function [p]=Lagrange(X,f)

    n=length(X);

    syms x;
    p=0;

    plot(X,f,'b*') % solo varibles que sean numericas

    grid on;

    for i=1:n
        L=1;
        for j=1:n
            if i~=j
                L=L*(x-X(j))/(X(i)-X(j));
            end
        end
        p=p+L*f(i)
    end
    
    p=expand(p);
    hold on
    ezplot(p,[0,10]) %entradas numericas y variable sno definidas

x=input("Ingrese el valor de x a interpolar");
pint=eval(p) %lee la entrada y automaticamente la evalua en mi polinomio

plot(x,pint,'g*')
end