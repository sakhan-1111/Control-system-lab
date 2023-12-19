clc;
clear all;
close all;
x=0:0.5:pi;
y=0:0.5:pi;
n=cosd(x);
m=sind(y);
figure
plot(n)
figure
plot(m)
z=n*m'