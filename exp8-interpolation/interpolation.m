clc;
clear all;

% Get user inputs for interpolation
L = input('Enter the interpolation factor: ');
f_input = input('Enter the frequency of the input sinusoid: ');
Fs_input = input('Enter the original sampling frequency (Fs): ');
L_input = input('Enter the length of the input signal: ');

% Generate the original discrete-time signal
n_input = 0:L_input-1;
x_input = sin(2*pi*(f_input/Fs_input)*n_input);

% Perform interpolation
y_output = interp(x_input, L);

% Create time vectors for plotting
t_input = n_input/Fs_input;
t_output = (0:length(y_output)-1)/(L*Fs_input);

% Plot the original and interpolated signals
figure(1);
subplot(2,1,1);
stem(t_input, x_input, 'b', 'filled');
title('Original Signal 050');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2,1,2);
stem(t_output, y_output, 'r', 'filled');
title('Interpolated Signal 050');
xlabel('Time (s)');
% ylabel('Amplitude');