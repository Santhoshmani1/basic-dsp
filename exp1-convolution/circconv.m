clc;
close all;
clear all;


x = input('enter input  sequence');
m = length(x)
n1 = 0: 1: m - 1;

h = input('enter impulse sequence')
n = length(h)
n2 = 0: 1: n - 1;


N = max(m, n);
X1 = fft(x, N);
X2 = fft(h, N);
X3 = X1 .* X2;
Y = ifft(X3);

subplot(3, 1, 1);
stem(x)
title('Input sequence A22126512050')
xlabel('n')
ylabel('x(n)')

subplot(3, 1, 2);
stem(h)
title('Impulse sequence A22126512050')
xlabel('n')
ylabel('h(n)')

subplot(3, 1, 3);
stem(Y)
title('Output sequence A22126512050')
xlabel('n')
ylabel('y(n)')

