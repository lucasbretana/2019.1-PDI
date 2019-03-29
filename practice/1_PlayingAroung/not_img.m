pkg load image

A = imread('../../res/ch3/toycars1.png');
B = imread('../../res/ch3/toycars2.png');

Abw = im2bw(A);
Bbw = im2bw(B);

subplot(1,3,1), imshow(Abw);
subplot(1,3,2), imshow(Bbw);
subplot(1,3,3), imshow(xor(Abw, Bbw));