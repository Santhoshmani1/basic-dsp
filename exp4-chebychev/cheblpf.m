clc;
close all;
clear all;

rp = input('Enter passband ripple (dB): ');
rs = input('Enter stopband ripple (dB): ');

fs = input('Enter stopband frequency (Hz): ');
fp = input('Enter passband frequency (Hz): ');
FS = input('Enter sampling frequency (Hz): ');

% Normalize frequencies
wp = 2 * fp / FS;
ws = 2 * fs / FS;

% Order and cutoff frequency
[N, wc] = cheb1ord(wp, ws, rp, rs);

% Design filter
[b, a] = cheby1(N, rp, wc, 'low');

% Frequency response
w = 0:0.01:pi;
[h, om] = freqz(b, a, w, 'whole');

% Magnitude in dB
m = 20*log10(abs(h));
an = angle(h);

% Plot magnitude
subplot(2,1,1);
plot(om/pi, m, 'LineWidth', 1.5);
grid on;
ylabel('Gain (dB)');
xlabel('Normalized Frequency (\times\pi rad/sample)');
title('Chebyshev Type I Low-pass Filter - Magnitude Response');

% Plot phase
subplot(2,1,2);
plot(om/pi, an, 'LineWidth', 1.5);
grid on;
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Phase (radians)');
title('Phase Response');
