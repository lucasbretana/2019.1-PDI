pkg load image

rm=imread('../../res/ExemploRM.jpg');  % read a binary image

se1=strel('ball',5,5);  % ball of radius 5 and high 5
rm1=imerode(rm,se1);    % erode

rm2=imdilate(rm,se1);

subplot(2,2,1),imshow(rm);      % show elements
subplot(2,2,3),imshow(rm1);
subplot(2,2,4),imshow(rm2);