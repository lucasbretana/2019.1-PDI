# Grupo: Douglas Costa, Guilherme Schineider e Lucas Bretana
pkg load image

A = imread('./res/lena512_8.bmp');

subplot(3,2,1), imshow(A);
subplot(3,2,2), imshow(imadjust(A, [], [], 1));

subplot(3,2,3), imshow(imadjust(A, [], [], 3));
subplot(3,2,4), imshow(imadjust(A, [], [], 0.4));

subplot(3,2,5), imshow(imadjust(A, [], [], 2.5));
subplot(3,2,6), imshow(imadjust(A, [], [], 1.8));
