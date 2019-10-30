clc
clear
close all;
img_original=imread('pika.png');
img_bnw=rgb2gray(img_original);
img_resize=imresize(img_bnw,[300, 300]);
%figure1
subplot(2,3,1)
imshow(img_resize)
title('Orignial Picture')
freq_map = DFT2(img_resize,300,300)
DFT2_inverse(freq_map,300,300)