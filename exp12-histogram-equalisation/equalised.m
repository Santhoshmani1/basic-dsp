clear;
close all;

img = imread('low_contrast_image.jpg');
img = rgb2gray(img);
eq_img = histeq(img);

figure;
subplot(1,2,1);
imshow(img);
title('Original Grayscale Image');

subplot(1,2,2);
imshow(eq_img);
title('Histogram Equalized Image');

figure;
subplot(1,2,1);
imhist(img);
title('Original Histogram');

subplot(1,2,2);
imhist(eq_img);
title('Equalized Histogram');
