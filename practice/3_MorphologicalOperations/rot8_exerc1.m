pkg load image

origbw=imread('../../res/circles.png');  % read a binary image

se=strel('disk',11,0);
erosbw=imerode(origbw, se);

subplot(1,2,1),imshow(origbw);      % show elements
subplot(1,2,2),imshow(erosbw);