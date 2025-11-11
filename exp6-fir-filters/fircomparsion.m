clc;
clear all;
close all;

N=input('enter the order') ;
fp=input('enter the passband frequency') ;
Fs=input('enter the sampling frequency');

wn=2*fp/Fs;
window=hann(N+1);
window1=rectwin(N+1);
b1= fir1(N,wn,window1);
b=fir1(N,wn,window);
[H1, W1]=freqz(b1,1);
[H, W]=freqz(b,1);

plot(W1/pi,20*log10(abs(H1)), '-');
grid 'on';
hold on
plot(W/pi,20*log10(abs(H)), '*');
grid 'on';
title('magnitude response comparsion of rectangular and hanning A22126512050');
ylabel('gain in db-------->;');
xlabel('normalized frequency------>;');
legend('rect','hann')
