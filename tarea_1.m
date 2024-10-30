%@author: Mateo Garcia
%m x n matriz generation

rows = input("Insert the row size: ");
columns = input("Insert the column size: ");
%initialize matrix to fix a size
myMatrix = zeros(rows, columns);

%getting first column data

for firstColumnIterator = 1 : rows
    myMatrix(firstColumnIterator,1) = input("[" + firstColumnIterator + " ,1] :");
end

for r = 1 : rows
    for c = 2 : columns
        myMatrix(r,c) = myMatrix(r,c -1) ^ 2;
    end
end

disp("Result Matrix");

myMatrix

