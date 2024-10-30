function [X, Aug, status] = gaussJordan(A, B, n)
    Aug = [A B];
    status = 0; 
    
    for i = 1:n
        if Aug(i,i) == 0
            for k = i+1:n
                if Aug(k,i) ~= 0
                    Aug([i k], :) = Aug([k i], :);
                    break;
                end
            end
        end
        if Aug(i,i) == 0
            continue;
        end
        Aug(i,:) = Aug(i,:) / Aug(i,i);
        
        for j = 1:n
            if j ~= i
                Aug(j,:) = Aug(j,:) - Aug(j,i) * Aug(i,:);
            end
        end
    end
    
    for i = 1:n
        if all(Aug(i,1:n) == 0) && Aug(i,end) ~= 0
            status = -1; 
            X = [];
            return;
        elseif all(Aug(i,1:n) == 0) && Aug(i,end) == 0
            status = 1; 
        end
    end
    disp("Matriz Resultado es: ")
    disp(Aug);
    X = Aug(:, end);
end