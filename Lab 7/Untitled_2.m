clc; clear all; close all;
num1=1.5;
den1=[1 3 2 0];
[num,den]=cloop(num1,den1);
H=tf(num,den);
t=linspace(0,60,2000)';
%step response
u=ones(length(t),1);
ys=step(H,t);
figure(1);
subplot(2,1,1), plot (t,u,t,ys,'--');
grid
eu=u-ys;
eu_ss=length(eu);
subplot(2,1,2), plot(t,eu);
grid
%Ramp response
r=t;
yr=lsim(H, r, t);
figure(2);
subplot(2,1,1), plot(t,r,t,yr,'--');
grid
er=r-yr;
er_ss=length(er);
subplot(2,1,2), plot(t, er);
grid
%Parabolic response
p=(t.*t)/2;
yp=lsim(H,p,t);
figure(3);
subplot(2,1,1), plot(t,p,t,yp,'--');
grid
ep=p-yp;
ep_ss=length(ep);
subplot(2,1,2), plot(t,ep);
grid
