pkg load image

A = imread('../../res/ch3/toycars1.png');
B = imread('../../res/ch3/toycars2.png');
C = imread('../../res/ch3/toycars3.png');

imshow((A/3)+(B/3)+(C/3));          % default way to blende images
figure; imshow((A/9)+(B/6)+(C/3));  % blende image with different significance
figure; imshow((A+B+C)/3);          % wrong way, the overflow occures before the poderation
                                    % causing inforamtion lost
