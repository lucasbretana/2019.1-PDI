pkg load image

rm=imread('../../res/ExemploRM.jpg');  % read a binary image

se1=strel('ball',5,5);  % ball of radius 5 and high 5
rm2=imdilate(rm,se1);

subplot(1,2,1),imshow(rm);      % show elements
subplot(1,2,2),imshow(rm2);