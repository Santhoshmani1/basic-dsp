clc;
close all;
clear all;

rp = input('Enter passband ripple (dB): ');
rs = input('Enter stopband ripple (dB): ');

fp1 = input('Enter lower passband frequency (Hz): ');
fs1 = input('Enter lower stopband frequency (Hz): ');
fs2 = input('Enter upper stopband frequency (Hz): ');
fp2 = input('Enter upper passband frequency (Hz): ');
FS  = input('Enter sampling frequency (Hz): ');

% Normalize frequencies (0–1, where 1 = Nyquist)
wp = [2*fp1/FS , 2*fp2/FS];   % passband edges
ws = [2*fs1/FS , 2*fs2/FS];   % stopband edges

% Filter order and cutoff
[N, wc] = cheb1ord(wp, ws, rp, rs);
[b, a] = cheby1(N, rp, wc, 'stop');   % Bandstop design

% Frequency response (0→π)
w = 0:0.01:pi;
[h, om] = freqz(b, a, w);

% Magnitude in dB
m = 20*log10(abs(h));
an = angle(h);

% Plot magnitude
subplot(2,1,1);
plot(om/pi, m, 'LineWidth', 1.5);
grid on;
ylabel('Gain (dB)');
xlabel('Normalized Frequency (\times\pi rad/sample)');
title('Chebyshev Type I Band-stop Filter - Magnitude Response');

% Plot phase
subplot(2,1,2);
plot(om/pi, an, 'LineWidth', 1.5);
grid on;
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Phase (radians)');
title('Phase Response');
