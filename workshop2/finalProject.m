clear;clc;

%a = arduino("/dev/cu.usbserial-142220", "Uno")



%sensor = ultrasonic(a, "D2", "D3")

%00201008CEF5 MAC address

bt=bluetooth('00:20:10:08:CE:F5',1);
fopen(bt);
fwrite(bt,'a');