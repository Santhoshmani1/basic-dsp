clc;
close all;
clear all;

rp = input('enter passband ripple');
rs = input('enter stopband ripple');

fs = input('enter stopband frequency 1');
fp = input('enter passband frequency 1');
FS = input('enter sampling frequency');


wp = 2 * fp / FS;
ws = 2 * fs / FS;

[N, wc] = buttord(wp,ws,rp,rs);
[den, num] = butter(N, wc, 'low');

[h,om]=freqz(den, num, 256, 'whole');
m=20*log10(abs(h));
an=angle(h);

subplot(2,1,1);
plot(om/pi,m) ;
ylabel('gain in dB ');
xlabel('normalized frequency');

subplot(2,1,2) ;
plot(om/pi,an) ;
xlabel('normalized frequency') ;
ylabel('phase in radians');