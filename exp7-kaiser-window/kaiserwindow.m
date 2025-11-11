clc;
close all;
clear all;

% N1 100, N2: 200
% beta1 : 20, beta2: 20
% fp 1000, FS 10000

N1 = input('enter the order1');
N2 = input('enter the order2');
beta1 = input('enter the beta1 order');
beta2 = input('enter the beta2 order');

fp = input('enter the passband freq');
FS = input('enter the sampling freq');
wn = 2 * fp / FS;

window1 = kaiser(N1 + 1);
b = fir1(N1, wn, window1);
[H, W]=freqz(b,1);
subplot(2,2,1)
plot(W/pi,20*log10(abs(H)));
grid 'on';
title('Kaiser window o/p for N1');
ylabel('gain in db');
xlabel('normalized frequency');

window2=kaiser(N2+1);
c=fir1(N2,wn,window2);
[A, An]=freqz(c,1);
subplot(2,2,2)
plot(An/pi,20*log10(abs(A)));
grid 'on'
title('Kaiser window o/p for N2');
ylabel('gain in db');
xlabel('normalized frequency');

N=100;
window4=kaiser(N+1,beta1);
d=fir1(N,wn,window4);
[H, W]=freqz(d,1);
subplot(2,2,3)
plot(W/pi,20*log10(abs(H)));
grid on;
title('Kaiser window o/p for beta 1');
ylabel('gain in db'); 
xlabel('normalized frequency');

window4=kaiser(N+   1,beta2);
e=fir1(N,wn,window4);
[A, An]=freqz(e,1);
subplot(2,2,4)
plot(An/pi,20*log10(abs(A)));
grid 'on'
title('Kaiser window o/p for beta2');
ylabel('gain in db');
xlabel('normalized frequency');