clc;
close all;
clear all;

N = input('enter the order');
fp=input('enter the passband frequency');
Fs=input('enter the sampling frequency');

wn=2*fp/Fs;
window=rectwin(N+1);
b1= fir1(N,wn,window);
[H1, W1]=freqz(b1,1);

subplot(2,2,1);
plot(W1/pi,20*log10(abs(H1)));
grid on;
title('magnitude response of FIR rectangular A22126512050');
ylabel('gain in db');
xlabel('normalized frequency');

subplot(2,2,2);
plot(W1/pi,angle(H1));
title('phase response of FIR rect A22126512050');
ylabel('angle in radians');
xlabel('normalized frequency');