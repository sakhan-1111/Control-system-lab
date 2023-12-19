clc;
clear all;
close all;
x=1:1:5;
y=6:1:10;
x*y'
z=x.*y
plot(x,z)
n=0:0.1:pi;
y=cosd(x)