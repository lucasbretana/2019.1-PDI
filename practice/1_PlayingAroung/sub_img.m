pkg load image
before = imread('../../res/ch3/cola1.png');
after = imread('../../res/ch3/cola2.png');

subplot(1,3,1), imshow(before);
subplot(1,3,2), imshow(after);
subplot(1,3,3), imshow(imsubtract(before,after));

figure; imshow(before-after);
