# Grupo: Douglas Costa, Guilherme Schineider e Lucas Bretana
pkg load image

A = im2double(imread('./res/lena512_8.bmp'));

subplot(3,2,1), imshow(A);
subplot(3,2,2), imshow(min(1*log(1+A), 1));

subplot(3,2,3), imshow(min(1.45*log(1+A), 1));
subplot(3,2,4), imshow(min(2*log(1+A), 1));

subplot(3,2,5), imshow(min(5*log(1+A), 1));
