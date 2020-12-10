close all
clear

G = imread('palast.jpg');
G = uint8(rgb2gray(G));
G64 = G./(256/64);
G64 = G64.*(256/64);
G32 = G./(256/32);
G32 = G32.*(256/32);
G16 = G./(256/16);
G16 = G16.*(256/16);
G8 = G./(256/8);
G8 = G8.*(256/8);

figure, subplot(2,2,1), imshow(G64);
subplot(2,2,2), imshow(G32);
subplot(2,2,3), imshow(G16);
subplot(2,2,4), imshow(G8);

