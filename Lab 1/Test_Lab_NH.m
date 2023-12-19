clc;
clear all;
close all;
x=0:0.5:pi;
y=x;
n=cosd(x);
m=sind(y);
subplot(2,1,1)
plot(n,'r')
title('cosd(x)')
subplot(2,1,2)
plot(m,'g')
title('sind(y)')
z=x*y'