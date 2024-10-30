function result = f_es(x)
    while (true)
        functionToExecute = input('[fun_es o fun_lg]: ', 's'); %insert function name
        disp(functionToExecute)
        if(functionToExecute ~= "fun_es" &&  functionToExecute ~= "fun_lg")
            disp("The function does not exist");
            break;
        else
            x = [3,9,0]; %x = 3
            if(functionToExecute == "fun_es")
                feval("fun_es",x)
            else
                feval("fun_lg",x)

        end
    end
end