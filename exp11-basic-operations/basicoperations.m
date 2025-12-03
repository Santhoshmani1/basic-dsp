clc;
close all;
clear all;

I = imread('phoenix.jpg');

rgb_pho = rgb2gray(I);
ro_ph = imrotate(I, 45);
hf_ph = flip(I, 1);
vf_ph = flip(I, 2);
rs_ph = imresize(I, [256 256]); % resized

figure;
subplot(2,3,1); imshow(I); title('Original');
subplot(2,3,2); imshow(rgb_pho); title('Grayscale');
subplot(2,3,3); imshow(ro_ph); title('Rotated 45°');
subplot(2,3,4); imshow(hf_ph); title('Horizontal Flip');
subplot(2,3,5); imshow(vf_ph); title('Vertical Flip');
subplot(2,3,6); imshow(rs_ph); title('Resized 256×256');
