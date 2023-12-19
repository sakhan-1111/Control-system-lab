clc; clear all; close all;
num1=[1];
den1=[1 .4 1];
num2=[1];
den2=[1 1]
G=tf(num1,den1)
H=tf(num2,den2)
T=feedback(G,H)
p=pole(G);
subplot(1,2,1)
pzmap(G)
subplot(1,2,2)
step(G)