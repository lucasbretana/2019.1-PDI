pkg load image

bw=imread('../../res/text.png');  % read a binary image
se=[0 1 0; 1 1 1; 0 1 0];         % define the strutural element
bw_out=imdilate(bw,se);           % dilates the image
subplot(1,2,1),imshow(bw);        % show elements
subplot(1,2,2),imshow(bw_out);    %

%% imdilate <- returns a dilated image