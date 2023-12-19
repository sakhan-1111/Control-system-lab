%Proportional Integral Derivative Control

clc; clear all; close all;
J=3.2284E-6;
b=3.5077E-6;
K=0.0274;
R=4;
L=2.75E-6;
num=K;
den=[(J*L) ((J*R)+(L*b)) ((b*R)+K^2) 0];
sys=tf (num,den);
numcf=conv([1 60],[1 70]);
dencf=[1 0];
controller=tf(numcf,dencf);
PID_sys=controller*sys;
subplot(1,2,1)
rlocus(PID_sys,0:.001:1);
sgrid(.5,0);
axis([-400 100 -200 200])
[k poles]=rlocfind(PID_sys);
feedbk_sys=feedback(k*PID_sys,1);
dis_sys=feedbk_sys/(k*controller);
subplot(1,2,2)
step(dis_sys,0:.001:.1);