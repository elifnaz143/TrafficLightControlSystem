
clc;close all;clear all;
a= arduino('COM5');%bağlantının yapılacağı port belirleniyor

if Count1 < Count2
writeDigitalPin(a,'D8',1);
writeDigitalPin(a,'D9',0);
writeDigitalPin(a,'D10',0);
writeDigitalPin(a,'D11',0);
writeDigitalPin(a,'D12',0);
writeDigitalPin(a,'D13',1);
pause(5);
writeDigitalPin(a,'D8',0);
writeDigitalPin(a,'D9',1);
writeDigitalPin(a,'D10',0);
writeDigitalPin(a,'D11',0);
writeDigitalPin(a,'D12',1);
writeDigitalPin(a,'D13',0);
pause(2);
writeDigitalPin(a,'D8',0);
writeDigitalPin(a,'D9',0);
writeDigitalPin(a,'D10',1);
writeDigitalPin(a,'D11',1);
writeDigitalPin(a,'D12',0);
writeDigitalPin(a,'D13',0);
pause(3);
elseif Count1 > Count2
writeDigitalPin(a,'D8',0);
writeDigitalPin(a,'D9',0);
writeDigitalPin(a,'D10',1);
writeDigitalPin(a,'D11',1);
writeDigitalPin(a,'D12',0);
writeDigitalPin(a,'D13',0);
pause(3);
writeDigitalPin(a,'D8',0);
writeDigitalPin(a,'D9',1);
writeDigitalPin(a,'D10',0);
writeDigitalPin(a,'D11',0);
writeDigitalPin(a,'D12',1);
writeDigitalPin(a,'D13',0);
pause(2);
writeDigitalPin(a,'D8',1);
writeDigitalPin(a,'D9',0);
writeDigitalPin(a,'D10',0);
writeDigitalPin(a,'D11',0);
writeDigitalPin(a,'D12',0);
writeDigitalPin(a,'D13',1);
pause(5);
else
writeDigitalPin(a,'D8',1);
writeDigitalPin(a,'D9',0);
writeDigitalPin(a,'D10',0);
writeDigitalPin(a,'D11',0);
writeDigitalPin(a,'D12',0);
writeDigitalPin(a,'D13',1);
pause(4);
writeDigitalPin(a,'D8',0);
writeDigitalPin(a,'D9',1);
writeDigitalPin(a,'D10',0);
writeDigitalPin(a,'D11',0);
writeDigitalPin(a,'D12',1);
writeDigitalPin(a,'D13',0);
pause(2);
writeDigitalPin(a,'D8',0);
writeDigitalPin(a,'D9',0);
writeDigitalPin(a,'D10',1);
writeDigitalPin(a,'D11',1);
writeDigitalPin(a,'D12',0);
writeDigitalPin(a,'D13',0);
pause(4);
end
