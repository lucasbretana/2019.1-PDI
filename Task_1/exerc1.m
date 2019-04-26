# Grupo: Douglas Costa, Guilherme Schineider e Lucas Bretana
pkg load image

A = imread('./res/lena512_8.bmp');
B = imcomplement(A);

subplot(1,2,1), imshow(A);
subplot(1,2,2), imshow(B);
