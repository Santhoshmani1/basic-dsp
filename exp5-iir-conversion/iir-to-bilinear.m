clc;
clear all;

T=1;
fs=1/T;

num = [0 2];
den = [1 0.2 0.4];

[numd, dend] = bilinear(num, den, fs);
analog_systf= tf(num, den)
digital_systf= tf(numd, dend, T)