bt=bluetooth('00:20:10:08:CE:F5',1);
fopen(bt);
while true
if bt.NumBytesAvailable > 0
    disp(char(read(bt, bt.NumBytesAvailable, "uint8")));
end
end
clc;clear
