pkg load image

% exerc 1
i=imread('../../res/snowflakes.png');  % read a binary image

se=strel('disk',3,0);
iopen=imopen(i, se);

figure;
subplot(1,2,1),imshow(i);      % show elements
subplot(1,2,2),imshow(iopen);

%exerc 2
m=imread('../../res/mamo.jpeg');  % read a binary image
%m=rgb2gray(m);

se1=strel('line',10,135); % (0,45,90,135,180)
mopend=imopen(m,se);
mopenl=imopen(m,se1);

figure;
subplot(1,2,1),imshow(mopend);
subplot(1,2,2),imshow(mopenl);

%exerc 3
a=imread('../../res/circle.png');  % read a binary image

se2=strel('disk',10,0);
aclo=imclose(a,se2);

figure;
subplot(1,2,1),imshow(a);
subplot(1,2,2),imshow(aclo);

%exerc 4
mf=imclose(m,se1);

figure;
subplot(1,2,1),imshow(m);
subplot(1,2,2),imshow(mf);

%exerc 5

