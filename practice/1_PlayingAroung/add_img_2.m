pkg load image
P = imread('sml1.jpg');
imshow(P)

Q = imread('sml2.jpg');
figure; imshow(Q)

R = imadd(P,Q);
figure; imshow(R)
figure; imshow(R+100)