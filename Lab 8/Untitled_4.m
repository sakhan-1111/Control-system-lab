%Proportional Integral Control

clc; clear all; close all;
J=3.2284E-6;
b=3.5077E-6;
K=0.0274;
R=4;
L=2.75E-6;
num=K;
den=[(J*L) ((J*R)+(L*b)) ((b*R)+K^2) 0];
sys=tf (num,den);
numcf=[1 20];
dencf=[1 0];
controller=tf(numcf,dencf);
PI_sys=controller*sys;
subplot(1,2,1)
rlocus(PI_sys,0:0.01:15);
sgrid(0.5,0)
axis([-400 100 -200 200])
[k poles]=rlocfind(PI_sys);
feedbk_sys=feedback(k*PI_sys,1);
dis_sys=feedbk_sys/(k*controller);
subplot(1,2,2)
step(dis_sys,0:.001:1);