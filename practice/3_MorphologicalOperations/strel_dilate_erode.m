pkg load image

bw=imread('../../res/text.png');  % read a binary image
se1=strel('square', 4);           % square 4x4
se2=strel('line',5,45);          % line, length 5, angle 45
bw_1=imdilate(bw,se1);
bw_2=imerode(bw,se2);

subplot(1,2,1),imshow(bw_1);      % show elements
subplot(1,2,2),imshow(bw_2);