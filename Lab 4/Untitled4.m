clc;
clear all;
close all;

s=tf('s');
sys=1/(s^2-6*s+25);
step(sys)
pole(sys)