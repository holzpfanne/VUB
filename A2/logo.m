close all
clear all

L = imread('logo.png');

R = L(:,:,1);
G = L(:,:,2);
B = L(:,:,3);

G((R > 50) & (G > 50) & (B < 20)) = 0;
R((R > 50) & (B > 50) & (G < 20)) = 0;
B((B > 50) & (G > 50) & (R < 20)) = 0;

L(:,:,1)=R;
L(:,:,2)=G;
L(:,:,3)=B;

figure, imshow(L);