pkg load image # load octave package for image processing


image = imread('biedronka.jpg');
image = rgb2gray(image);
image = im2double(image);

iterations=100;

[u,s,v] = svd(image,iterations);

approximation=10;
image10 = u(:,1:approximation)*s(1:approximation,1:approximation)*v(:,1:approximation)';
approximation=20;
image20 = u(:,1:approximation)*s(1:approximation,1:approximation)*v(:,1:approximation)';
approximation=40;
image40 = u(:,1:approximation)*s(1:approximation,1:approximation)*v(:,1:approximation)';
approximation=80;
image80 = u(:,1:approximation)*s(1:approximation,1:approximation)*v(:,1:approximation)';
 
 
subplot(3,2,1), imshow(image),  title('Original 640x480')
subplot(3,2,3), imshow(image10),title('approximation=10')
subplot(3,2,4), imshow(image20),title('approximation=20')
subplot(3,2,5), imshow(image40),title('approximation=40')
subplot(3,2,6), imshow(image80),title('approximation=80')