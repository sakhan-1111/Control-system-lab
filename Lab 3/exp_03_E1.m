clc; clear all; close all;
s=tf('s');
w=1;
j=.4/3;
wd=w*sqrt(1-j^2);
sigma=j*w;
sys=1/(s^2+0.4*s+1);
Rise_time_Tr=(1/wd)*atan(wd/sigma)
Peak_time_Tp=pi/(w*sqrt(1-j^2))
Maximum_Overshoot_os=exp((-pi*j)/(sqrt(1-j^2)))
Settling_time_Ts=4/(j*w)
step(sys)
grid on