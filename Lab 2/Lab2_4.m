clc; clear all; close all;
x=linspace(0,7);
y=exp(x);
subplot(2,1,1), plot(x,y);
subplot(2,1,2), semilogy(x,y);