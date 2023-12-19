clc; clear all; close all;
x=0:0.1:pi;
y=cos(x);
plot(y);
plot(x,cos(x),'r');
plot (x,y,x,y.^2);