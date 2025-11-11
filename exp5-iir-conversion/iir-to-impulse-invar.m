clc;
clear all;
num=[0 2],
den =  [1 0.2 0.4];

T=1;

[numd, dend] = impinvar (num, den)
analog systf= tf(num, den)
digital systf= tf(numd, dend, T);