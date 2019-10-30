clc
clear
close all;
%edit image
img_original=imread('pika.png');
img_bnw=rgb2gray(img_original);
img_resize=imresize(img_bnw,[300, 300]);

%discrete block processing
dct_blk = blkproc(img_resize, [8 8], 'DCT_blk');
subplot(2,3,2);
imshow(dct_blk);
title('Distinct DCT block processing');
a=1

%discrete block processing inverse
dct_blk_inverse = blkproc(dct_blk, [8 8], 'DCT_blk_inverse');
subplot(2,3,3);
imshow(dct_blk_inverse);
title('Retrived Image');
a=2

%discrete block processing
dft_blk = blkproc(img_resize, [8 8], 'DFT2_blk');
subplot(2,3,5);
imshow(dft_blk);
title('Distinct DFT block processing');
a=3

%discrete block processing inverse
dft_blk_inverse = blkproc(dft_blk, [8 8], 'DFT2_blk_inverse');
subplot(2,3,6);
imshow(dft_blk_inverse);
title('Retrived Image');
a=4

%figure1
subplot(2,3,1)
imshow(img_resize)
title('Orignial Picture')