close all
clear

G = imread('greenbox.jpg');
B = imread('Boote.jpg');

GR = G(:,:,1);
GG = G(:,:,2);
GB = G(:,:,3);

BR = B(:,:,1);
BG = B(:,:,2);
BB = B(:,:,3);

N = G;

SG = size(G);

M = zeros(SG(1),SG(2));

HSV = rgb2hsv(G);
H = HSV(:,:,1);
S = HSV(:,:,2);
V = HSV(:,:,3);
M((H > 0.2) & (H < 0.37) & (V > 0.8) & (S > 0.4)) = 255;

M = medfilt2(M);
%bring in meinem Fall kaum Änderung im Bild

NR = N(:,:,1);
NG = N(:,:,2);
NB = N(:,:,3);

NR(M == 255) = BR(M == 255);
NG(M == 255) = BG(M == 255);
NB(M == 255) = BB(M == 255);

N(:,:,1) = NR;
N(:,:,2) = NG;
N(:,:,3) = NB;

figure, subplot(2,2,1), imshow(G);
subplot(2,2,2), imshow(HSV);
subplot(2,2,3), imshow(M);
subplot(2,2,4), imshow(N);




