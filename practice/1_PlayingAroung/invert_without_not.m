pkg load image

A = imread('../../res/cameraman.tif');
subplot(1,2,1), imshow(A);

B = 255 - A;

subplot(1,2,2), imshow(B);
%% AND = '&'
%% OR = '|'
%% A & B; C | D