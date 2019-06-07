pkg load image

bw=imread('../../res/text.png');  % read a binary image
se=ones(6,1);                     % define the strutural element
bw_out=imerode(bw,se);            % erode the image
subplot(1,2,1),imshow(bw);        % show elements
subplot(1,2,2),imshow(bw_out);    %