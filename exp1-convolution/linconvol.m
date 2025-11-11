clc;
close all;
clear all;


x = input('enter input  sequence');
m = length(x)
n1 = 0: 1: m - 1;

h = input('enter impulse sequence')
n = length(h)
n2 = 0: 1: n - 1;


y = conv(x, h)
output_len = length(y)
N = 0: 1: output_len - 1;


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
stem(y)
title('Output sequence A22126512050')
xlabel('n')
ylabel('y(n)')

