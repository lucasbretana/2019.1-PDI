pkg load image

A = imread('../../res/ch3/toycars1.png');
B = imread('../../res/ch3/toycars2.png');

Abw = im2bw(A);
Bbw = im2bw(B);

subplot(2,3,1), imshow(Abw);
subplot(2,3,2), imshow(Bbw);
subplot(2,3,3), imshow(xor(Abw, Bbw));
subplot(2,3,4), imshow(and(Abw, Bbw));
subplot(2,3,5), imshow(or(Abw, Bbw));
subplot(2,3,6), imshow(not(xor(Abw, Bbw)));