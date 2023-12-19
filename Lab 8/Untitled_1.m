%Open System

clc; clear all; close all;
J=3.2284E-6;
b=3.5077E-6;
K=0.0274;
R=4;
L=2.75E-6;
num=K;
den=[(J*L) ((J*R)+(L*b)) ((b*R)+K^2) 0];
sys=tf (num,den);
subplot(1,2,1)
rlocus(sys);
sgrid(0.5,0)
axis([-400 100 -200 200])
subplot(1,2,2)
step(num,den,0:0.001:0.2);