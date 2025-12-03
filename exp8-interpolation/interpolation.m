clc;
close all;
clear all;

L = input('enter interpolation factor');
f = input('original freq signal');
FS = input('sampling frquency');
l_input = input('length of input signal');

x = sin(2 * pi * (f / FS) * 0:l_input - 1); 
y = interp(x, L);

% Plot the original and interpolated signals

figure(1);
subplot(2,1,1);
stem(x, 'b', 'filled');
title('Original Signal 050');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2,1,2);
stem(y, 'r', 'filled');
title('Interpolated Signal 050');
xlabel('Time (s)');
ylabel('Amplitude');
