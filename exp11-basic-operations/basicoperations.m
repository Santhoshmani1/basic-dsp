clc;
clear all;

I = imread('/MATLAB Drive/image.jpg');
I1 = rgb2gray(I);
subplot(4,2,1);
imshow(I);
title('Original Image');

subplot(4,2,2);
imshow(I1);
title('Grayscale Image');

I2=imread('/MATLAB Drive/image.jpg')
I3=rgb2gray(I2)
subplot(4,2,3)
imshow(I2)

K=imrotate(I2,90)
imshow(K)
title('Rotated Image 90DEG');
K2 = imresize(I, [100 100]); 
subplot(4,2,4);
imshow(K2);
title('Resized image');

K3 = flip(I, 2);
subplot(4,2,5);
imshow(K3);
title('Horizontally Flipped Image');

K4 = flip(I, 1);
subplot(4,2,6);
imshow(K4);
title('Vertically Flipped Image');