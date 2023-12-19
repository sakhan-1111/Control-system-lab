clc; clear all; close all;
%open system
J=3.2284E-6;
b=3.5077E-6;
K=0.0274;
R=4;
L=2.75E-6;
num=K;
den=[(J*L) ((J*R)+(L*b)) ((b*R)+K^2) 0];
step(num,den,0:0.001:0.2)
figure
sys=tf (num,den);
rlocus(sys);
sgrid(0.5,0)
axis([-400 100 -200 200])

%proportional Control
numcf=[1];
dencf=[0 1];
controller=tf(numcf,dencf);
p_sys=controller*sys;
rlocus(p_sys);
sgrid(0.5,0)
axis([-400 100 -200 200])
k=1.7;
feedbk_sys=feedback(k*p_sys,1);
figure
step(feedbk_sys,0:.001:.5);
figure
dis_sys=feedbk_sys/(k*controller);
step(dis_sys,0:.001:.5);

%integral Control
sys=tf (num,den);
numcf=[1];
dencf=[1 0];
controller=tf(numcf,dencf);
I_sys=controller*sys;
figure
rlocus(I_sys);
sgrid(0.5,0)
axis([-400 100 -200 200])
[k poles]=rlocfind(I_sys);
feedbk_sys=feedback(k*I_sys,1);
figure
step(feedbk_sys,0:.001:1);
figure
dis_sys=feedbk_sys/(k*controller);
step(dis_sys,0:.001:1);

%proportional integral Control
numcf=[1 20];
dencf=[1 0];
controller=tf(numcf,dencf);
PI_sys=controller*sys;
figure
rlocus(PI_sys,0:0.01:15);
sgrid(0.5,0)
axis([-400 100 -200 200])
[k poles]=rlocfind(PI_sys);
feedbk_sys=feedback(k*PI_sys,1);
figure
step(feedbk_sys,0:.001:1);
figure
dis_sys=feedbk_sys/(k*controller);
step(dis_sys,0:.001:1);

%proportional integral Derivative Control
numcf=conv([1 60],[1 70]);
dencf=[1 0];
controller=tf(numcf,dencf);
PID_sys=controller*sys;
rlocus(PID_sys,0:.001:1);
sgrid(.5,0);
axis([-400 100 -200 200])
[k poles]=rlocfind(PID_sys);
feedbk_sys=feedback(k*PID_sys,1);
figure
step(feedbk_sys,0:.001:.1);
figure
dis_sys=feedbk_sys/(k*controller);
step(dis_sys,0:.001:.1);
