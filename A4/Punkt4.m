close all
clear

G = imread('Panorama_SW.gif');


S = size(G);

N = zeros(S(1), S(2), 3);

NR = zeros(S(1), S(2));
NG = ones(S(1), S(2));
NG = NG*255;
NB = zeros(S(1), S(2));

NB(G==255) = 255;
NG(G==0) = 0;
NR(G==0 | G == 170) = 255;

N(:,:,1) = NR;
N(:,:,2) = NG;
N(:,:,3) = NB;

figure, subplot(1,2,1), imshow(G);
subplot(1,2,2), imshow(N);