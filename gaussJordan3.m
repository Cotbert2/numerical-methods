clear
clc
A = [-0.04 0.04 0.12; 0.56 -1.56 0.32; -0.24 1.24 -0.28];

b = [3 1 0]';
A = [A b];


sizeB = 3;

for current = 1:sizeB
    A(current,:) = A(current,:)/A(current,current);
    for i = (1:sizeB)
        if (i ~= current)
            A(i,:) = A(i,:) - A(current,:)*A(i,current)/A(current,current);
        end
    end
end

for c = 1:sizeB
    if all(A(1:sizeB - 1,:)==0)
        if(b(c) == 0)
            disp("Sistema con infinitas soluciones");
        else 
            disp("Sistema sin soluciones");
        end
    end
end


A