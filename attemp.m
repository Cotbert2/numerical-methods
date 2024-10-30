rows = input("Ingrese el numero de filas: ");
columns = input("Ingree el numero de columnas: ");

myMatrix = zeros(rows, columns);
myMatrix;

for r = 1:rows
    for c = 1:columns
        myMatrix(r,c) = input("Ingrese el valor para [" + r + ","+ c + "]: ")
    end
end

disp("Matriz resultante: ")
myMatrix
