clc;
clear all;

D = input('Enter the downsampling factor: ');
L = input('Enter the length of the input signal: ');
f = input('Enter the sampling frequency of the first sinusoidal: ');
n = 0:L-1;
x = sin(2*pi*f*n);
y = decimate(x, D);

figure(1)
subplot(2,1,1);
stem(n, x); % Removed redundant (1:L)
title('Decimation input sequence 050');
xlabel('Time (n)');
ylabel('Amplitude');

subplot(2,1,2);
m = 0:length(y)-1; % Corrected line
stem(m, y); % Removed redundant (1:L/D)
title('Decimation output sequence 050');