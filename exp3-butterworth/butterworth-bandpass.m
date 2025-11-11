clc;
close all;
clear all;

rp = input('enter passband ripple');
rs = input('enter stopband ripple');

fs1 = input('enter stopband frequency 1');
fp1 = input('enter passband frequency 1');
fp2 = input('enter passband frequency 2');
fs2 = input('enter stopband frequency 2');
FS = input('enter sampling frequency');


wp = [fp1 fp2] / (FS / 2);
ws = [fs1 fs2] / (FS / 2);

[N, wc] = buttord(wp,ws,rp,rs);
[den, num] = butter(N, wc, 'bandpass');

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