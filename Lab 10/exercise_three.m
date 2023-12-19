clc;
clear all;
close all;
num1=[1 0.5];
num2=[1 4 3];
den1=[1 5 3 2];
den2=[1 17 72];
num=conv(num1,num2);
den=conv(den1,den2);
k=[0:0.5:5];
r=rlocus(num, den, k);
plot(r,'x','MarkerSize',15 )
grid
title('Root Locus'), xlabel('Real parts of the roots'),ylabel('Imaginary parts of the roots')
