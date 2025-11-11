% Input sequence
x = input('Enter input sequence x = ');

% Length of DFT
N = input('Enter number of points in DFT N = ');

% Compute DFT
X1 = fft(x, N);
magX = abs(X1);
phaseX = angle(X1);

% Plot input sequence
subplot(3,1,1);
stem(0:length(x)-1, x, 'filled');
title('Input Sequence - A22126512050');
xlabel('n');
ylabel('x(n)');
grid on;

% Plot magnitude spectrum
subplot(3,1,2);
stem(0:N-1, magX, 'filled');
title('Magnitude Spectrum');
xlabel('Frequency Index (k)');
ylabel('|X(k)|');
grid on;

% Plot phase spectrum
subplot(3,1,3);
stem(0:N-1, phaseX, 'filled');
title('Phase Spectrum');
xlabel('Frequency Index (k)');
ylabel('Phase (radians)');
grid on;