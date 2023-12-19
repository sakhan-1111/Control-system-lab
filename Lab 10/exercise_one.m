clc;
clear all;
close all;
num1=[1 1];
num2=[1];
den1=[1 3 3.25];
den2=[1];
num=conv(num1,num2);
den=conv(den1,den2);
k=[0:0.5:5];
r=rlocus(num, den, k);
plot(r,'x','MarkerSize',15 )
grid
title('Root Locus'), xlabel('Real parts of the roots'),ylabel('Imaginary parts of the roots')
% A=[Xmin,Xmax,Ymin, Ymax]
% axis (A)
% axis auto
% r
% r(m,n)
% k(m)