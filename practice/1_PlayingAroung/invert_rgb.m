pkg load image

A = imread('../../res/homer.jpg');
subplot(2,2,1), imshow(A);
subplot(2,2,2), imshow(255 - rgb2gray(A));
B = A; % just so the B matrix is the same size as the A one

B(:,:,1) = 255 - A(:,:,1); % first is the line, then the column and at last the channel, i.e. [r,g,b]
B(:,:,2) = 255 - A(:,:,2);
B(:,:,3) = 255 - A(:,:,3);

subplot(2,2,3), imshow(B);
subplot(2,2,4), imshow(rgb2gray(B));

