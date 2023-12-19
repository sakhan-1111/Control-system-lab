clc; clear all; close all; 
x=0:1:3;
t=length(x);
for i=1:t
    val(i)=cal_pow(x(i));
end
plot(x,val);