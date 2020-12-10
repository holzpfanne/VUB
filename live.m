close all
clear

L = imread('Lenna.png');

G = rgb2gray(L);
S = blkproc(G,[8,8],'dct2');

maske = zeros(8,8);
maske(1,1)= 1;
maske(2,1)= 1;
maske(1,2)= 1;
maske(2,2)= 1;

% A = blkproc(S,[8 8],'x.*P1',maske);

B = blkproc(S,[8,8],'idct2');
figure, subplot(1,3,1), imshow(uint8(G))
subplot(1,3,2), imshow(uint8(S))
subplot(1,3,3), imshow(uint8(B))