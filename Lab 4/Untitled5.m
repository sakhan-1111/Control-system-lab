clc;
clear all;
close all;

 s=tf('s');

 w=1;
 j=0.4/2;
 wd=w*sqrt(1-j^2)
 sigma=j*w;
 sys=1/(s^2+.4*s+1);
 sy=sys/(1+sys(1.0))
 Rise_time_Tr=(1/wd)*atan(wd/sigma)
 Peak_time_Tp=pi/(w*sqrt(1-j^2))
 Max_Overshoot_os=exp((-pi*j)/(sqrt(1-j^2)))
 Settling_time_Ts=4/j*w
 f1 = figure;
 step(sys)
 hold on
 step(sy)
 hold off
 f3=figure;
 pzmap(sys)
 grid on