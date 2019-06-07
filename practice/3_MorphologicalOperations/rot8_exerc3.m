pkg load image

bw=imread('../../res/text.png');  % read a binary image

se2=strel('line',11,90);          % line, length 5, angle 45
bw2=imdilate(bw,se2);

subplot(1,2,1),imshow(bw);      % show elements
subplot(1,2,2),imshow(bw2);